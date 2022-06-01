import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taxidriver/domain/auth/auth_failure.dart';
import 'package:taxidriver/domain/auth/user.dart';

class FireBaseAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final fb = FacebookLogin();

  FireBaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  Future<Option<User>> getSignedUser() async {
    // await signOut();
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return none();
    } else {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();
      try {
        return optionOf(
          User(
            uid: user.uid,
            email: user.email!,
            displayName: user.displayName,
            photoURL: user.photoURL,
            phone: userDoc.data()?['phone'] as String?,
            isPhoneVerified: userDoc.data()!['isPhoneVerified'] as bool,
          ),
        );
      } catch (e) {
        return none();
      }
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final authMethod = await checkAuthMethod(googleUser.email);
      if (authMethod != SignInMethod.google) {
        return left(AuthFailure.invalidCredentials());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final d = await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<void> signOut() async {
    Future.wait([
      fb.logOut(),
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      final creds = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (creds.user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(creds.user!.uid)
            .set(
          {
            'username': username,
            'email': email,
            'isPhoneVerified': false,
            'ts': Timestamp.now(),
          },
        );
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email_already_in_use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final d = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidCredentials());
      }
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final creds = await _firebaseAuth.signInWithCredential(authCredential);
      if (creds.user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(creds.user!.uid)
            .set(
          {
            'username': creds.user!.displayName,
            'email': creds.user!.email,
            'isPhoneVerified': false,
            'ts': Timestamp.now(),
          },
          SetOptions(
            mergeFields: [
              'isPhoneVerified',
              'ts',
            ],
          ),
        );
      }
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPhoneVerification(String phoneNumber) {
    // TODO: implement sendPhoneVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyPhoneNumber(String code) {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }

  Future<SignInMethod> checkAuthMethod(String email) async {
    final methods = await _firebaseAuth.fetchSignInMethodsForEmail(email);
    if (methods.isEmpty) {
      return SignInMethod.unknown;
    }
    if (methods[0].contains('google')) {
      return SignInMethod.google;
    } else if (methods[0].contains('facebook')) {
      return SignInMethod.facebook;
    } else {
      return SignInMethod.email;
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      final res = await fb.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);
      switch (res.status) {
        case FacebookLoginStatus.success:
          final FacebookAccessToken accessToken = res.accessToken!;

          final email = await fb.getUserEmail();
          if (email != null) {
            final FacebookAccessToken? accessToken = res.accessToken;

            final facebookAuthCredential =
                FacebookAuthProvider.credential(accessToken!.token);
            await _firebaseAuth.signInWithCredential(facebookAuthCredential);

            return right(unit);
          }

          return right(unit);

        case FacebookLoginStatus.cancel:
          // User cancel log in
          break;
        case FacebookLoginStatus.error:
          // Log in failed
          print('Error while log in: ${res.error}');
          break;
      }
      return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit>> registerWithFacebook() async {
    try {
      final res = await fb.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);
      switch (res.status) {
        case FacebookLoginStatus.success:
          final FacebookAccessToken accessToken = res.accessToken!;
          print(accessToken);

          final facebookAuthCredential =
              FacebookAuthProvider.credential(accessToken.token);
          final creds =
              await _firebaseAuth.signInWithCredential(facebookAuthCredential);

          if (creds.user != null) {
            await FirebaseFirestore.instance
                .collection('users')
                .doc(creds.user!.uid)
                .set(
              {
                'username': creds.user!.displayName,
                'email': creds.user!.email,
                'isPhoneVerified': false,
                'ts': Timestamp.now(),
              },
              SetOptions(
                mergeFields: [
                  'isPhoneVerified',
                  'ts',
                  'email',
                  'username',
                ],
              ),
            );
            return right(unit);
          } else {
            return left(AuthFailure.serverError());
          }

        case FacebookLoginStatus.cancel:
          break;
        case FacebookLoginStatus.error:
          break;
      }
      return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }
}

enum SignInMethod {
  google,
  facebook,
  email,
  unknown,
}

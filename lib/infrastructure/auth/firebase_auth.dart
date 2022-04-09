import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taxidriver/domain/auth/auth_failure.dart';
import 'package:taxidriver/domain/auth/i_auth_facade.dart';
import 'package:taxidriver/domain/auth/user.dart';

class FireBaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FireBaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<User>> getSignedUser() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return none();
    } else {
      return optionOf(
        User(
          uid: user.uid,
          email: user.email!,
          displayName: user.displayName!,
          photoURL: user.photoURL!,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final authMethod = await checkAuthMethod(googleUser.email);
      print(authMethod);
      if (authMethod != SignInMethod.google) {
        return left(AuthFailure.invalidCredentials());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
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
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
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
    return signGoogle();
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

  //GoogleSignIn
  Future<Either<AuthFailure, Unit>> signGoogle() async {
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

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
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
}

enum SignInMethod {
  google,
  facebook,
  email,
  unknown,
}

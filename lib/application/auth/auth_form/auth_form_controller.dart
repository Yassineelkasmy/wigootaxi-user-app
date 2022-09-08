import 'package:dartz/dartz.dart';
import 'package:taxidriver/application/auth/auth_event.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_state.dart';
import 'package:taxidriver/application/auth/auth_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/infrastructure/auth/firebase_auth.dart';

class AuthFormController extends StateNotifier<AuthFormState> {
  AuthFormController(this._authFacade, this._authStateController)
      : super(AuthFormState.initial());
  final FireBaseAuthFacade _authFacade;
  final AuthController _authStateController;
  void checkAuthState() {
    _authStateController.mapEventToState(const AuthEvent.authCheckRequested());
  }

  Future mapEventToState(AuthFormEvent event) {
    return event.map(
      signInWithGooglePresseed: (_) async {
        state = state.copyWith(
          isSubmitting: true,
        );
        final authFailureOrSuccess = await _authFacade.signInWithGoogle();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
      },
      signInWithFacebookPressed: (_) async {
        state = state.copyWith(isSubmitting: true);

        final authFailureOrSuccess = await _authFacade.signInWithFacebook();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
        state = state.copyWith(isSubmitting: false);
      },
      signOutPressed: (_) async {
        await _authFacade.signOut();

        await _authStateController.mapEventToState(AuthEvent.signedOut());

        checkAuthState();
      },
      registerWithGooglePressed: (_) async {
        state = state.copyWith(
          isSubmitting: true,
        );
        final authFailureOrSuccess = await _authFacade.registerWithGoogle();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );

        state = state.copyWith(isSubmitting: false);
      },
      registerWithFacebookPressed: (_) async {
        state = state.copyWith(isSubmitting: true);

        final authFailureOrSuccess = await _authFacade.registerWithFacebook();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
        state = state.copyWith(isSubmitting: false);
      },
      registerWithEmailAndPasswordPressed: (event) async {
        state = state.copyWith(isSubmitting: true);
        final registerWithSuccessOrFailure =
            await _authFacade.registerWithEmailAndPassword(
          email: event.email,
          password: event.password,
          username: event.username,
        );
        state = state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(registerWithSuccessOrFailure),
        );
      },
      phoneNumberSubmitted: (event) async {
        state = state.copyWith(isSubmitting: true);
      },
      signInWithEmailAndPasswordPressed: (event) async {
        state = state.copyWith(isSubmitting: true);
        final successOrFailure = await _authFacade.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        successOrFailure.fold((l) => null, (success) => checkAuthState());

        state = state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(successOrFailure),
        );
      },
    );
  }
}

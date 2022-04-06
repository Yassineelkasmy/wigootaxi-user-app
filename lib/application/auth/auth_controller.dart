import 'package:taxidriver/application/auth/auth_event.dart';
import 'package:taxidriver/application/auth/auth_state.dart';
import 'package:taxidriver/domain/auth/i_auth_facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController(this._authFacade) : super(const AuthState.initial());

  final IAuthFacade _authFacade;

  Future mapEventToState(AuthEvent authEvent) {
    return authEvent.map(authCheckRequested: (_) async {
      final userOption = await _authFacade.getSignedUser();
      userOption.fold(() {
        state = const AuthState.unauthenticated();
      }, (user) {
        state = AuthState.authenticated(user);
      });
    }, signedOut: (_) async {
      state = const AuthState.unauthenticated();
    });
  }
}

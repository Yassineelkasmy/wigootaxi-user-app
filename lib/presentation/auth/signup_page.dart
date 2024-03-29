import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/application/auth/auth_event.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_state.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/auth/widgets/social_media_button.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/in_app_notfication.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

import '../shared/logo.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);
  final signUpForm = FormGroup(
    {
      'password': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.minLength(8),
        ],
      ),
      'confirmation': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.equals('password'),
        ],
      ),
      'email': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.email,
        ],
      ),
      'username': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.minLength(3),
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    final authController = ref.watch(authtProvider.notifier);

    ref.listen<AuthFormState>(
      authFormProvider,
      (previous, next) {
        next.authFailureOrSuccessOption.map(
          (failure) => failure.fold(
            (failure) {
              final message = failure.map(
                cancelledByUser: (_) => "Annulé par l'utilisateur",
                serverError: (_) => "Erreur du serveur",
                emailAlreadyInUse: (_) => "Email déjà utilisé",
                invalidCredentials: (_) =>
                    "Les informations d'identification invalides",
                userDisabled: (_) => "Utilisateur désactivé",
                userNotVerified: (_) => "Utilisateur non vérifié",
                invalidPinCode: (_) => "Code PIN invalide",
                phoneAlreadyInUse: (_) => "Téléphone déjà utilisé",
                goolgeAccountNotRegistered: (_) =>
                    "Compte Google non inscrit, Créez d'abord un compte avec Google",
              );

              InAppNotification.show(
                duration: Duration(seconds: 3),
                child: InnerNotifications(
                  message: message,
                  isScuccess: false,
                ),
                context: context,
              );
            },
            (_) => null,
          ),
        );
      },
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  40.h.verticalSpace,
                  buildLogo(white: false),
                  40.h.verticalSpace,
                  ReactiveForm(
                    formGroup: signUpForm,
                    child: Column(
                      children: [
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'username',
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.profile_circled,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: "Nom d'utilisateur",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        10.h.verticalSpace,
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'email',
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.mail,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: "Email",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        10.h.verticalSpace,
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'password',
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.padlock,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: 'Mot de passe',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        10.h.verticalSpace,
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'confirmation',
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.padlock,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: 'Confirmation du mot de passe',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        20.h.verticalSpace,
                        SizedBox(
                          width: double.maxFinite,
                          child: SubmitButton(
                            isLoading: authFormState.isSubmitting,
                            onPressed: () async {
                              final username = signUpForm
                                  .findControl('username')!
                                  .value as String;

                              final email = signUpForm
                                  .findControl('email')!
                                  .value as String;
                              final password = signUpForm
                                  .findControl('password')!
                                  .value as String;

                              await authFormController.mapEventToState(
                                AuthFormEvent
                                    .registerWithEmailAndPasswordPressed(
                                  email,
                                  password,
                                  username,
                                ),
                              );

                              authController.mapEventToState(
                                AuthEvent.authCheckRequested(),
                              );
                            },
                            text: "SUIVANT",
                          ),
                        ),
                        10.h.verticalSpace,
                      ],
                    ),
                  ),
                  SocialMedia(
                    onFacebookPressed: () {
                      InAppNotification.show(
                        duration: Duration(seconds: 3),
                        child: InnerNotifications(
                          message:
                              "Une erreur s'est produite, réessayez plus tard",
                          isScuccess: false,
                        ),
                        context: context,
                      );
                    },
                    onGooglePressed: () {
                      authFormController.mapEventToState(
                          const AuthFormEvent.registerWithGooglePressed());
                    },
                    text: "S'INSCRIRE AVEC",
                  ),
                  40.h.verticalSpace,
                  RichText(
                    text: TextSpan(
                      text: "Vous avez déjà un compte ? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Connexion",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => AutoRouter.of(context)
                                .replace(LoginPageRoute()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

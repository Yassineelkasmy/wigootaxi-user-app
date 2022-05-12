import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/application/auth/auth_event.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/auth/widgets/social_media_button.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

import '../shared/logo.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);
  final signUpForm = FormGroup(
    {
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
      'confirmation': FormControl<String>(
        validators: [Validators.required, Validators.equals('password')],
      ),
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'username': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    final authController = ref.watch(authtProvider.notifier);

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
            child: Column(
              children: [
                buildLogo(white: false),
                ReactiveForm(
                  formGroup: signUpForm,
                  child: Column(
                    children: [
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          hintText: "Nom d'utilisateur",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        formControlName: 'username',
                        validationMessages: (control) => {
                          'required': "Nom d'utilisateur ne doit pas être vide",
                        },
                      ),
                      10.h.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        formControlName: 'email',
                        validationMessages: (control) => {
                          'required': "Email ne doit pas être vide",
                        },
                      ),
                      10.h.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          hintText: "Mot de passe",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        formControlName: 'password',
                        obscureText: true,
                        validationMessages: (control) => {
                          'required': 'Le mot de passe ne doit pas être vide',
                          'minLenght':
                              'Le mot de passe doit comporter au moins 8 caractères'
                        },
                      ),
                      10.h.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          hintText: "Confirmer votre Mot de passe",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        formControlName: 'confirmation',
                        obscureText: true,
                        validationMessages: (control) => {
                          'required': 'Le mot de passe ne doit pas être vide',
                          'minLenght':
                              'Le mot de passe doit comporter au moins 8 caractères'
                        },
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

                            final email = signUpForm.findControl('email')!.value
                                as String;
                            final password = signUpForm
                                .findControl('password')!
                                .value as String;

                            await authFormController.mapEventToState(
                              AuthFormEvent.registerWithEmailAndPasswordPressed(
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
                    authFormController.mapEventToState(
                      const AuthFormEvent.registerWithFacebookPressed(),
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
                          ..onTap = () =>
                              AutoRouter.of(context).replace(LoginPageRoute()),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

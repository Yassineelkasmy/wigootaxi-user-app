import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/auth/widgets/social_media_button.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

import '../shared/logo.dart';

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'email': FormControl<String>(validators: []),
      'password': FormControl<String>(validators: []),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.w,
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
                  formGroup: loginForm,
                  child: Column(
                    children: [
                      Material(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ReactiveTextField(
                          formControlName: 'email',
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
                      10.verticalSpace,
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          child: Text(
                            "Mot de passe oublié ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: double.maxFinite,
                        child: SubmitButton(
                          isLoading: authFormState.isSubmitting,
                          onPressed: () {
                            final email =
                                loginForm.findControl('email')!.value as String;
                            final password = loginForm
                                .findControl('password')!
                                .value as String;
          
                            authFormController.mapEventToState(
                              AuthFormEvent.signInWithEmailAndPasswordPressed(
                                email,
                                password,
                              ),
                            );
                          },
                          text: "CONNEXION",
                        ),
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                SocialMedia(
                  onFacebookPressed: () {
                    authFormController.mapEventToState(
                        const AuthFormEvent.signInWithFacebookPressed());
                  },
                  onGooglePressed: () {
                    authFormController.mapEventToState(
                        const AuthFormEvent.signInWithGooglePresseed());
                  },
                  text: "SE CONNECTER AVEC",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: RichText(
                    text: TextSpan(
                      text: "Vous n'a avez pas de compte ? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "S'inscrire",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                AutoRouter.of(context).replace(SignUpPageRoute()),
                        )
                      ],
                    ),
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

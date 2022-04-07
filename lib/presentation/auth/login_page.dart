import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

import '../shared/logo.dart';

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'email': FormControl<String>(validators: [
        Validators.required,
        Validators.email,
      ]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
      ]),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
          ),
          child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildLogo(white: false),
                ReactiveForm(
                  formGroup: loginForm,
                  child: Column(
                    children: [
                      ReactiveTextField(
                        decoration: InputDecoration(
                          hintText: "Nom d'utilisateur",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        formControlName: 'email',
                        validationMessages: (control) => {
                          'required': "L'e-mail ne doit pas être vide",
                          'email': 'Email invalide'
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ReactiveTextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
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
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          child: Text(
                            "Mot de passe oublié ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: SubmitButton(
                          onPressed: () =>
                              AutoRouter.of(context).replace(HomePageRoute()),
                          text: "CONNEXION",
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: RichText(
                    text: TextSpan(
                        text: "Vous n'a avez pas de compte ? ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "S'inscrire",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => AutoRouter.of(context)
                                  .replace(SignUpPageRoute()),
                          )
                        ]),
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

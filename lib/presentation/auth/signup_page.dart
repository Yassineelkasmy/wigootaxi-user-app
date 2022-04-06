import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'email': FormControl<String>(validators: [
        Validators.required,
        Validators.email,
      ]),
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
      'username': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
      'phone': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(10),
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "WIGOO TAXI",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      formControlName: 'username',
                      validationMessages: (control) => {
                        'required': "Nom d'utilisateur ne doit pas être vide",
                        'email': 'Email invalide'
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ReactiveTextField(
                      decoration: InputDecoration(
                        hintText: "Numéro de téléphone",
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      formControlName: 'phone',
                      validationMessages: (control) => {
                        'required': "Numéro de téléphone ne doit pas être vide",
                        'email': 'Numéro de téléphone invalide'
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
                      height: 32,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: SubmitButton(
                        onPressed: () => {},
                        text: "CRÉER UN COMPTE",
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                    text: "Vous avez déjà un compte ? ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Connexion",
                        style: TextStyle(
                          color: FlexColor.blue.light.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              AutoRouter.of(context).replace(LoginPageRoute()),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/recette_box.dart';
import 'package:flutter_application_1/user/user.dart';

import 'Commun/get_password_text_form_field.dart';
import 'Commun/get_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 35, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GenTextFormField(
                        controller: emailController,
                        hintData: "Email",
                        iconData: Icons.email,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child:
                          GenPasswordTextFormField(controller: pwdController),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minWidth: double.infinity,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            User user = User(
                                email: emailController.value.text.trim(),
                                password: pwdController.value.text.trim());
                            for (User user1 in RecetteBox.getUser().values) {
                              if (user1.email == user.email &&
                                  user1.password == user.password) {
                                Navigator.pushNamed(context, '/listRecette');
                              }
                            }
                            // ignore: avoid_print
                            print(user.toString());
                          }
                        },
                        // ignore: sort_child_properties_last
                        child: const Text('Login'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

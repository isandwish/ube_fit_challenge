import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:ube_fit_challenge/screens/homepage.dart';
import 'package:ube_fit_challenge/screens/templatepage.dart';
import 'package:ube_fit_challenge/widgets/action_button.dart';
import 'package:ube_fit_challenge/widgets/app_logo.dart';
import 'package:ube_fit_challenge/widgets/background.dart';
import 'package:ube_fit_challenge/widgets/text_box.dart';

import 'package:ube_fit_challenge/screens/registerpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 1080,
            height: 2400,
            child: Stack(
              children: [
                Background(),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UBEChallengeLogo(width: 260),
                      RunLogo(width: 200, height: 175),
                      SizedBox(height: 40),
                      TextBox(boxname: 'email'),
                      SizedBox(height: 20),
                      PasswordBox(),
                      SizedBox(height: 20),
                      ActionButton(
                        text: 'Login',
                        width: 130,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TemplatePage(
                                      content: HomePage(),
                                    )),
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'No account? ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFD9D9D9),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create one',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
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

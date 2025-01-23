import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/screens/homepage.dart';
import 'package:ube_fit_challenge/screens/templatepage.dart';

import 'package:ube_fit_challenge/widgets/action_button.dart';
import 'package:ube_fit_challenge/widgets/app_logo.dart';
import 'package:ube_fit_challenge/widgets/background.dart';
import 'package:ube_fit_challenge/widgets/text_box.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  child: SingleChildScrollView(
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
                        PasswordBox(),
                        SizedBox(height: 20),
                        ActionButton(
                          text: 'Sign Up',
                          width: 160,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegInfoPage()),
                            );
                          },
                        ),
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

class RegInfoPage extends StatelessWidget {
  const RegInfoPage({super.key});

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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UBERunLogo(width: 350),
                        SizedBox(height: 40),
                        TextBox(boxname: 'Name'),
                        SizedBox(height: 25),
                        TextBox(boxname: 'Department'),
                        SizedBox(height: 25),
                        TextBox(boxname: 'Position'),
                        SizedBox(height: 25),
                        TextBox(boxname: 'Birthday Date'),
                        SizedBox(height: 25),
                        TextBox(boxname: 'Phone Number'),
                        SizedBox(height: 20),
                        ActionButton(
                          text: 'Done',
                          width: 160,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TemplatePage(content: HomePage())),
                            );
                          },
                        ),
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

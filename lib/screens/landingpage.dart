import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/widgets/app_logo.dart';
import 'package:ube_fit_challenge/widgets/background.dart';
import 'package:ube_fit_challenge/widgets/action_button.dart';

import 'package:ube_fit_challenge/screens/loginpage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                        SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey there,\nAre you ready?',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Whether you’re a fitness pro or just getting started, we’ve got your back!',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        ActionButton(
                          text: 'Let\'s Start',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
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

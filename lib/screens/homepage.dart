import 'package:flutter/material.dart';

import 'package:ube_fit_challenge/widgets/box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning,';
    } else if (hour < 17) {
      return 'Good Afternoon,';
    } else {
      return 'Good Evening,';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _getGreeting(),
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Text(
          "Natthanicha Jamjuree",
          style: TextStyle(fontSize: 25, color: Color(0xFF153093)),
        ),
        SizedBox(height: 20),
        Box(
            title: "Today Ranking",
            width: 320,
            height: 155,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'You are ranked ',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        TextSpan(
                          text: '5 th',
                          style:
                              TextStyle(fontSize: 30, color: Color(0xFF142E7B)),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '8,231 Calories',
                    style: TextStyle(fontSize: 20, color: Color(0xFF153093)),
                  ),
                ),
              ],
            )),
        SizedBox(height: 20),
        Box(
          title: "Progress",
          width: 320,
          height: 320,
          content: Center(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'You have been exercising\n continuously for ',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      TextSpan(
                        text: '2 weeks',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF153093)),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 260,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'In the past month',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Run/Walk ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              TextSpan(
                                text: '3,253 Steps',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFF153093)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Run ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              TextSpan(
                                text: '12 Kilometers',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFF153093)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Burned ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              TextSpan(
                                text: '8,231 Calories',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFF153093)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

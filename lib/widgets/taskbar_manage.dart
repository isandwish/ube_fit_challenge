import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/screens/homepage.dart';
import 'package:ube_fit_challenge/screens/fitnesspage.dart';
import 'package:ube_fit_challenge/screens/templatepage.dart';
// import 'package:ube_fit_challenge/screens/activitypage.dart';
import 'package:ube_fit_challenge/screens/rankpage.dart';
// import 'package:ube_fit_challenge/screens/userpage.dart';

class Taskbar extends StatefulWidget {
  const Taskbar({super.key});

  @override
  _TaskbarState createState() => _TaskbarState();
}

class _TaskbarState extends State<Taskbar> {
  int currentIndex = 0; // Set default selected index to 0

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 340,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0x6B6B6B6B).withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: const Color(0xFFC5C5C5),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              // AnimatedAlign(
              //   duration: const Duration(milliseconds: 300),
              //   alignment: _getAlignment(currentIndex),
              //   child: Container(
              //     width: 50,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       color: const Color(0xFF3B3B3B).withOpacity(0.6),
              //       shape: BoxShape.circle,
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIcon(
                      'assets/icons/home.png',
                      0,
                      TemplatePage(
                        content: HomePage(),
                      )),
                  _buildIcon(
                      'assets/icons/fitness.png',
                      1,
                      TemplatePage(
                        content: FitnessPage(),
                      )),
                  _buildIconWithoutNavigation(
                    'assets/icons/calendar.png',
                    2,
                  ),
                  _buildIcon(
                      'assets/icons/rank.png',
                      3,
                      TemplatePage(
                        content: RankPage(),
                      )),
                  _buildIconWithoutNavigation(
                    'assets/icons/user.png',
                    4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String assetPath, int index, Widget page) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(assetPath, width: 40, height: 40),
        ),
      ),
    );
  }

  Widget _buildIconWithoutNavigation(String assetPath, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(assetPath, width: 40, height: 40),
        ),
      ),
    );
  }

  // Alignment _getAlignment(int index) {
  //   switch (index) {
  //     case 0:
  //       return const Alignment(-0.9, 0);
  //     case 1:
  //       return const Alignment(-0.45, 0);
  //     case 2:
  //       return Alignment.center;
  //     case 3:
  //       return const Alignment(0.45, 0);
  //     case 4:
  //       return const Alignment(0.9, 0);
  //     default:
  //       return Alignment(-0.9, 0);
  //   }
  // }
}

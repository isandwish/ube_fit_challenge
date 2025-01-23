import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/widgets/app_logo.dart';
import 'package:ube_fit_challenge/widgets/background.dart';
import 'package:ube_fit_challenge/widgets/circle_tab.dart';
import 'package:ube_fit_challenge/widgets/taskbar_manage.dart';

class TemplatePage extends StatelessWidget {
  final Widget? content;

  const TemplatePage({super.key, this.content});

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
                Positioned(
                  top: 40,
                  right: 40,
                  child: UBERunLogo(
                    width: 240,
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 30,
                    child: CircleWithRectangles(
                      rectangleWidths: [34, 27, 20],
                    )),
                Taskbar(),
                Positioned.fill(
                  top: 30,
                  bottom: 65,
                  child: SafeArea(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            content ?? Container(),
                          ],
                        ),
                      ),
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

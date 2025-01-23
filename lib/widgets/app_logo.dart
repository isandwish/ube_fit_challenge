import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;

  const AppLogo({
    super.key,
    required this.assetPath,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
    );
  }
}

class UBEChallengeLogo extends AppLogo {
  const UBEChallengeLogo({
    super.key,
    super.width = 200.0,
    super.height = 200.0,
  }) : super(
          assetPath: 'assets/logo/ube_fit_challenge_logo.png',
        );
}

class UBERunLogo extends AppLogo {
  const UBERunLogo({
    super.key,
    super.width,
    super.height,
  }) : super(
          assetPath: 'assets/logo/ube_run_logo.png',
        );
}

class RunLogo extends AppLogo {
  const RunLogo({
    super.key,
    super.width,
    super.height,
  }) : super(
          assetPath: 'assets/logo/run_logo.png',
        );
}

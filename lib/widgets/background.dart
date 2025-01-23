import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFEAEAEA), // EAEAEA at 0%
            Color(0xFF8F8F8F), // 8F8F8F at 40%
            Color(0xFF292929), // 292929 at 100%
          ],
          stops: [0.0, 0.4, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

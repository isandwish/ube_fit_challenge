import 'package:flutter/material.dart';

class CircleWithRectangles extends StatelessWidget {
  final List<double> rectangleWidths;

  const CircleWithRectangles({super.key, required this.rectangleWidths});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 30,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFF7F5F5),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(3, (index) {
                return Container(
                  width: rectangleWidths[index],
                  height: 7,
                  margin: EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xCC9C9C9C), // 80% opacity
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

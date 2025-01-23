import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String title;
  final Color color;
  final double width;
  final double height;
  final Widget? content;

  Box({
    required this.title,
    this.color = const Color.fromRGBO(217, 217, 217, 0.5),
    required this.width,
    required this.height,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            width: width - 20,
            height: 2,
            decoration: BoxDecoration(
              color: Color.fromRGBO(110, 110, 110, 0.6),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          if (content != null)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: content,
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RankBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String name;
  final String detail;
  final int rank;
  final Color textColor;
  final double nameFontSize;
  final double detailFontSize;

  RankBox({
    this.width = 320.0,
    this.height = 55.0,
    this.color = const Color(0xFFD9D9D9),
    required this.name,
    required this.detail,
    required this.rank,
    this.textColor = Colors.black,
    this.nameFontSize = 20.0,
    this.detailFontSize = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: nameFontSize,
                        color: textColor,
                      ),
                    ),
                    Text(
                      detail,
                      style: TextStyle(
                        fontSize: detailFontSize,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Text(
                    '$rank',
                    style: TextStyle(
                      fontSize: 40,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class Rank1 extends RankBox {
  Rank1({
    double width = 320.0,
    double height = 90.0,
    Color color = const Color(0xFF142E7B),
    required String name,
    required String detail,
    required int rank,
    Color textColor = Colors.white,
    double nameFontSize = 26,
    double detailFontSize = 24,
  }) : super(
          width: width,
          height: height,
          color: color,
          name: name,
          detail: detail,
          rank: rank,
          textColor: textColor,
          nameFontSize: nameFontSize,
          detailFontSize: detailFontSize,
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        super.build(context),
        Positioned(
          left: -20,
          top: -5,
          child: Image.asset(
            'assets/icons/no1.png',
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}

class Rank2 extends RankBox {
  Rank2({
    double width = 320.0,
    double height = 65.0,
    Color color = const Color.fromARGB(255, 26, 53, 136),
    required String name,
    required String detail,
    required int rank,
    Color textColor = Colors.white,
    double nameFontSize = 22,
    double detailFontSize = 20,
  }) : super(
          width: width,
          height: height,
          color: color,
          name: name,
          detail: detail,
          rank: rank,
          textColor: textColor,
          nameFontSize: nameFontSize,
          detailFontSize: detailFontSize,
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        super.build(context),
        Positioned(
          left: -10,
          top: -5,
          child: Image.asset(
            'assets/icons/no2.png',
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}

class Rank3 extends RankBox {
  Rank3({
    double width = 320.0,
    double height = 55.0,
    Color color = const Color(0xFF284A9B),
    required String name,
    required String detail,
    required int rank,
    Color textColor = Colors.white,
    double nameFontSize = 20,
    double detailFontSize = 18,
  }) : super(
          width: width,
          height: height,
          color: color,
          name: name,
          detail: detail,
          rank: rank,
          textColor: textColor,
          nameFontSize: nameFontSize,
          detailFontSize: detailFontSize,
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        super.build(context),
        Positioned(
          left: -5,
          top: -3,
          child: Image.asset(
            'assets/icons/no3.png',
            width: 70,
            height: 70,
          ),
        ),
      ],
    );
  }
}

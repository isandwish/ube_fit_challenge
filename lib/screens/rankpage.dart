import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/widgets/action_button.dart';
import 'package:ube_fit_challenge/widgets/rank_box.dart';

class RankPage extends StatelessWidget {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
      child: Column(
        children: [
          Image.asset(
            'assets/text/ranking_text.png',
            height: 40,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionButton(
                text: 'Steps',
                textSize: 18,
                onPressed: () {},
                width: 100,
                height: 35,
                borderRadius: 25,
                color: Color(0xFF153093),
              ),
              ActionButton(
                text: 'Distance',
                textSize: 18,
                onPressed: () {},
                width: 120,
                height: 35,
                borderRadius: 25,
                color: Color(0xFF153093),
              ),
              ActionButton(
                text: 'Calories',
                textSize: 18,
                onPressed: () {},
                width: 115,
                height: 35,
                borderRadius: 25,
                color: Color(0xFF153093),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Rank1(name: 'N', detail: '22,312 Steps', rank: 1),
              Rank2(name: 'James', detail: '20,121 Steps', rank: 2),
              Rank3(name: 'John', detail: '18,653 Steps', rank: 3),
              RankBox(
                name: 'Jim',
                detail: '18,355 Steps',
                rank: 4,
              ),
              RankBox(
                name: 'Jojo',
                detail: '17,964 Steps',
                rank: 5,
              ),
              RankBox(
                name: 'Kane',
                detail: '15,653 Steps',
                rank: 6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

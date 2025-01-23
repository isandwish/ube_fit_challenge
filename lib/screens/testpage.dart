import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/widgets/action_button.dart';
import 'package:ube_fit_challenge/widgets/rank_box.dart';

class RankPage2 extends StatelessWidget {
  const RankPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('ExerciseLog')
                .orderBy('steps', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }

              final documents = snapshot.data!.docs;
              return ListView.builder(
                itemCount: documents.length,
                itemBuilder: (context, index) {
                  final data = documents[index].data() as Map<String, dynamic>;
                  final name = data['name'] ?? 'Unknown';
                  final steps = data['steps'] ?? 0;
                  final rank = index + 1;

                  return RankBox(
                    name: name,
                    detail: '$steps Steps',
                    rank: rank,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

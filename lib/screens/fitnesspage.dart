import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ube_fit_challenge/widgets/action_button.dart';
import 'package:ube_fit_challenge/widgets/text_box.dart';

import 'package:ube_fit_challenge/model/exercise_model.dart';

class FitnessPage extends StatefulWidget {
  const FitnessPage({super.key});

  @override
  _FitnessPageState createState() => _FitnessPageState();
}

class _FitnessPageState extends State<FitnessPage> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController exerciseNameController = TextEditingController();
  final TextEditingController exerciseTypeController = TextEditingController();
  final TextEditingController stepsKmCaloriesController =
      TextEditingController();
  String selectedExerciseType = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/text/exercise_text.png',
                  height: 40,
                ),
                SizedBox(height: 40),
                DateBox(
                  boxname: 'Date',
                  controller: dateController,
                ),
                SizedBox(height: 25),
                TextBox(
                  boxname: 'Exercise Name',
                  controller: exerciseNameController,
                ),
                SizedBox(height: 25),
                ChoiceButton(
                  boxname: 'Types of exercise',
                  controller: exerciseTypeController,
                  choices: [
                    'Count Steps',
                    'Distance',
                    'Calories Burned',
                  ],
                ),
                SizedBox(height: 25),
                TextBox(
                  boxname: 'Steps/KM/Calories',
                  controller: stepsKmCaloriesController,
                ),
                SizedBox(height: 25),
                // NotWorkButton(
                //   boxname: 'Photo',
                // ),
                NotWorkButton(boxname: 'Photo'),
                SizedBox(height: 20),
                ActionButton(
                  text: 'Save',
                  width: 160,
                  onPressed: () async {
                    ExerciseLog newLog = ExerciseLog(
                      exerciseName: exerciseNameController.text,
                      date: DateTime.tryParse(dateController.text),
                      steps: exerciseTypeController.text == 'Count Steps'
                          ? int.tryParse(stepsKmCaloriesController.text)
                          : null,
                      distance: exerciseTypeController.text == 'Distance'
                          ? int.tryParse(stepsKmCaloriesController.text)
                          : null,
                      calories: exerciseTypeController.text == 'Calories Burned'
                          ? int.tryParse(stepsKmCaloriesController.text)
                          : null,
                    );
                    await FirebaseFirestore.instance
                        .collection('ExerciseLog')
                        .add({
                      'name': newLog.name,
                      'department': newLog.department,
                      'exerciseName': newLog.exerciseName,
                      'date': newLog.date,
                      'steps': newLog.steps,
                      'distance': newLog.distance,
                      'calories': newLog.calories,
                    });

                    print('Date: ${dateController.text}');
                    print('Exercise Name: ${exerciseNameController.text}');
                    print('Types of exercise: ${exerciseTypeController.text}');
                    print(
                        'Steps/KM/Calories: ${stepsKmCaloriesController.text}');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

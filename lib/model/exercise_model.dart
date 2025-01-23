class ExerciseLog {
  final String name;
  final String department;
  final String exerciseName;
  DateTime date;
  int? steps;
  int? distance;
  int? calories;

  ExerciseLog({
    this.name = "Natthanicha",
    this.department = "Dev",
    this.exerciseName = "",
    DateTime? date,
    this.steps,
    this.distance,
    this.calories,
  }) : date = date ?? DateTime.now();
}

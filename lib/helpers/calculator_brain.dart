import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. It\'s time to look into changing your diet and exercising more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Way to go!';
    } else {
      return 'You have a low bodyweight. Now would be a good time to raise your calorie intake.';
    }
  }
}

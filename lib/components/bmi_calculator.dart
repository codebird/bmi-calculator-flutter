import 'dart:math';

class BMICalculator {
  int height;
  int weight;
  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getState() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    }
    return 'Normal';
  }

  String getRecommendation() {
    if (_bmi >= 25) {
      return 'You\'re overweight, you need to eat healthier and exercise more.';
    } else if (_bmi < 18.5) {
      return 'You\'re underweight, you need to eat healthy and more.';
    }
    return 'You\'re in great shape, keep up what you\'re doing';
  }
}

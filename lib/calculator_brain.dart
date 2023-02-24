import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(int age) {
    if (age > 19) {
      //adult
      //BMI Formular == Weight in Kg / square of height in metres
      _bmi = weight / pow(height / 100, 2);
    } else {
      //children
      //BMI Formular == Weight in pounds * 703 (a) / square of height in inches (b)

      //1kg = 2.2lbs
      double weightInPounds = weight * 2.20462;
      double a = weightInPounds * 703;

      //1cm = .39in
      double b = pow(height * 0.393701, 2).toDouble();

      _bmi = a / b;
    }
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You are obese. See a doctor or pharmacist for counselling.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

import 'package:bmi_calculator_app/constant/constants.dart';

/// كلاس يوفر دوال لحساب مؤشر كتلة الجسم والطرق ذات الصلة.
class BMICalculator {
  /// دالة لحساب مؤشر كتلة الجسم باستخدام الوزن والطول.
  static double calculateBMI(double weight, double height) {
    return weight / ((height / 100) * (height / 100));
  }

  /// دالة للحصول على رسالة النتيجة بناءً على قيمة مؤشر كتلة الجسم.
  static String getResultMessage(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  /// دالة للحصول على رسالة النصيحة بناءً على قيمة مؤشر كتلة الجسم.
  static String getAdviceMessage(double bmi) {
    if (bmi < 18.5) {
      return underweightMessage;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return normalWeightMessage;
    } else if (bmi >= 25 && bmi <= 29.9) {
      return overweightMessage;
    } else {
      return obesityMessage;
    }
  }

  /// دالة لحساب الحد الأدنى للوزن الصحي للطول المعطى.
  static double getMinHealthyWeight(double height) {
    return 18.5 * ((height / 100) * (height / 100));
  }

  /// دالة لحساب الحد الأقصى للوزن الصحي للطول المعطى.
  static double getMaxHealthyWeight(double height) {
    return 24.9 * ((height / 100) * (height / 100));
  }
}

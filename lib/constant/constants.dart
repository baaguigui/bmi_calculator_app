import 'package:flutter/material.dart';

/// كلاس يحتوي على اسم التطبيق.
class AppName {
  static const String name = 'BMI Calculator';
}

/// كلاس يحتوي على لوحة ألوان التطبيق.
abstract final class AppColors {
  static const Color interactiveLightOrange = Color(0xffe8a794);
  static const Color backgroundDarkBlue = Color(0xff194d5b);
  static const Color disabledTransparentBlue = Color.fromARGB(70, 25, 77, 91);
}

/// رسائل لفئات مؤشر كتلة الجسم المختلفة.
const String underweightMessage =
    'A BMI of less than 18.5 indicates that you are underweight, so you may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice.';
const String normalWeightMessage =
    'A BMI of 18.5-24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.';
const String overweightMessage =
    'A BMI of 25-29.9 indicates that you are slightly overweight. You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice.';
const String obesityMessage =
    'A BMI of over 30 indicates that you are heavily overweight. Your health may be at risk if you do not lose weight. You are recommended to talk to your doctor or a dietitian for advice.';

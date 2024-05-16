import 'package:bmi_calculator_app/services/s_bmi_calculator.dart';
import 'package:bmi_calculator_app/views/v_result.dart';
import 'package:flutter/material.dart';

/// دالة للتنقل إلى صفحة النتائج مع حساب مؤشر كتلة الجسم والبيانات ذات الصلة.
void navigateToResultPage(BuildContext context, double height, double weight) {
  // حساب مؤشر كتلة الجسم باستخدام الطول والوزن المقدمين.
  double bmi = BMICalculator.calculateBMI(weight, height);

  // الحصول على رسالة النتيجة بناءً على قيمة مؤشر كتلة الجسم.
  String result = BMICalculator.getResultMessage(bmi);

  // الحصول على رسالة النصيحة بناءً على قيمة مؤشر كتلة الجسم.
  String advice = BMICalculator.getAdviceMessage(bmi);

  // حساب الحد الأدنى للوزن الصحي للطول المعطى.
  double minHealthyWeight = BMICalculator.getMinHealthyWeight(height);

  // حساب الحد الأقصى للوزن الصحي للطول المعطى.
  double maxHealthyWeight = BMICalculator.getMaxHealthyWeight(height);

  // التنقل إلى صفحة النتائج مع البيانات المحسوبة.
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => ResultPage(
        bmi: bmi,
        result: result,
        advice: advice,
        minHealthyWeight: minHealthyWeight,
        maxHealthyWeight: maxHealthyWeight,
      ),
    ),
  );
}

import 'package:bmi_calculator_app/constant/constants.dart';
import 'package:bmi_calculator_app/services/s_bmi_calculator.dart';
import 'package:bmi_calculator_app/views/v_bmi_info_page.dart';
import 'package:flutter/material.dart';

/// صفحة تعرض نتيجة حساب مؤشر كتلة الجسم.
class ResultPage extends StatelessWidget {
  final double bmi;
  final String result;
  final String advice;
  final double minHealthyWeight;
  final double maxHealthyWeight;

  const ResultPage({
    super.key,
    required this.bmi,
    required this.result,
    required this.advice,
    required this.minHealthyWeight,
    required this.maxHealthyWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: [
            /// عرض عنوان النتيجة.
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                alignment: Alignment.center,
                child: const Text(
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColors.backgroundDarkBlue,
                    ),
                    "Result"),
              ),
            ),

            /// عرض نتيجة مؤشر كتلة الجسم والنصيحة.
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.interactiveLightOrange,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          'BMI = ${bmi.toStringAsFixed(1)} KG/M2 \n ($result)',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          textAlign: TextAlign.center,
                          BMICalculator.getAdviceMessage(bmi),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// عرض الوزن الصحي للطول المدخل.
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(70, 25, 77, 91),
                  ),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    'Healthy weight for the height: ${minHealthyWeight.toStringAsFixed(1)} kg - ${maxHealthyWeight.toStringAsFixed(1)} kg',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.backgroundDarkBlue,
                    ),
                  ),
                ),
              ),
            ),

            /// رابط لصفحة معلومات مؤشر كتلة الجسم.
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BmiInfoPage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 66, 0, 0),
                  child: const Center(
                    child: Text(
                      'Learn more about BMI (Body Mass Index)',
                      style: TextStyle(
                        color: AppColors.backgroundDarkBlue,
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            /// زر للعودة وحساب مؤشر كتلة الجسم من جديد.
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundDarkBlue,
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: const Center(
                  child: Text(
                    'NEW CALCULATE',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

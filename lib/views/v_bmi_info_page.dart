import 'package:flutter/material.dart';

/// صفحة توفر معلومات حول مؤشر كتلة الجسم.
class BmiInfoPage extends StatelessWidget {
  const BmiInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Body Mass Index (BMI):',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Definition:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'BMI is a measure that uses your height and weight to work out if your weight is healthy. It is defined as a person\'s weight in kilograms divided by the square of their height in meters (kg/m²).',
              ),
              SizedBox(height: 10),
              Text(
                '2. Calculation:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Formula: BMI = weight (kg) / height (m)^2\nFor example, if you weigh 70 kilograms and are 1.75 meters tall, your BMI would be calculated as follows:\nBMI = 70 / 1.75^2 ≈ 22.9',
              ),
              SizedBox(height: 10),
              Text(
                '3. Categories:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Underweight: BMI less than 18.5\nNormal weight: BMI 18.5 – 24.9\nOverweight: BMI 25 – 29.9\nObesity: BMI 30 or more',
              ),
              SizedBox(height: 10),
              Text(
                '4. Uses:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Screening tool: BMI is often used as a simple method to screen for potential weight problems in adults.\nHealth risk indicator: Higher BMI can be associated with an increased risk of conditions like heart disease, high blood pressure, type 2 diabetes, gallstones, breathing problems, and certain cancers.',
              ),
              SizedBox(height: 10),
              Text(
                '5. Limitations:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Does not measure body fat directly: BMI does not distinguish between weight from fat and weight from muscle. Therefore, a very muscular person might have a high BMI but not have excess body fat.\nDoes not consider distribution of fat: It does not take into account where the fat is distributed in the body, which can be important for health risks.',
              ),
              SizedBox(height: 10),
              Text(
                '6. Alternative measures:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Waist circumference: This can be used along with BMI to give a better indication of health risk.\nBody fat percentage: Measured using skinfold thickness measurements, bioelectrical impedance, or other methods.',
              ),
              SizedBox(height: 10),
              Text(
                '7. For children and adolescents:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'BMI is age and sex-specific and is often referred to as BMI-for-age. It is compared against growth charts to determine a child\'s percentile ranking.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

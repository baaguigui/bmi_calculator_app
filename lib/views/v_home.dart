import 'package:bmi_calculator_app/constant/constants.dart';
import 'package:bmi_calculator_app/models/m_enum.dart';
import 'package:bmi_calculator_app/navigation/n_navigation_helper.dart';
import 'package:bmi_calculator_app/views/v_bmi_info_page.dart';
import 'package:bmi_calculator_app/widgets/w_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  /// المتغير لتحديد الجنس المحدد.
  Gender selectedCard = Gender.male;

  /// المتغيرات المتعلقة بالعمر والطول والوزن.
  final int _totalCount = 250;
  final num _initValue = 168;
  num _currentValue = 50;

  final int _nTotalCount = 100;
  final int _nTotalCount2 = 250;
  final num _nInitValue = 25;
  final num _nInitValue2 = 55;
  num _nCurrentValue = 25;
  num _nCurrentValue2 = 55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: Column(
        children: [
          /// قسم لاختيار الجنس.
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  /// زر لاختيار الجنس الذكري.
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(70, 25, 77, 91),
                          ),
                          color: selectedCard == Gender.male
                              ? AppColors.interactiveLightOrange
                              : Colors.transparent,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: selectedCard == Gender.male
                                        ? Colors.white
                                        : AppColors.backgroundDarkBlue,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.male,
                                color: selectedCard == Gender.male
                                    ? Colors.white
                                    : AppColors.backgroundDarkBlue,
                              )
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  /// زر لاختيار الجنس الأنثوي.
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.female;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(70, 25, 77, 91),
                          ),
                          color: selectedCard == Gender.female
                              ? AppColors.interactiveLightOrange
                              : Colors.transparent,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: selectedCard == Gender.female
                                        ? Colors.white
                                        : AppColors.backgroundDarkBlue,
                                    fontWeight: FontWeight.normal),
                              ),
                              Icon(
                                Icons.female,
                                color: selectedCard == Gender.female
                                    ? Colors.white
                                    : AppColors.backgroundDarkBlue,
                              )
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          /// قسم لاختيار العمر.
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        style: TextStyle(
                          color: AppColors.backgroundDarkBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        "Age"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 7,
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(10, 2, 10, 70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(70, 25, 77, 91),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WheelSlider.number(
                              horizontal: false,
                              verticalListHeight: 300.0,
                              perspective: 0.01,
                              squeeze: 1.5,
                              totalCount: _nTotalCount,
                              initValue: _nInitValue,
                              unSelectedNumberStyle: const TextStyle(
                                fontSize: 16.0,
                                color: AppColors.backgroundDarkBlue,
                              ),
                              selectedNumberStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.backgroundDarkBlue,
                              ),
                              currentIndex: _nCurrentValue,
                              onValueChanged: (val) {
                                setState(() {
                                  _nCurrentValue = val;
                                });
                              },
                              hapticFeedbackType:
                                  HapticFeedbackType.heavyImpact,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(10, 2, 10, 70),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60,
                            ),
                            Icon(
                              Icons.arrow_left,
                              size: 40,
                              color: AppColors.backgroundDarkBlue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          /// قسم لاختيار الطول.
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text(
                            style: TextStyle(
                              color: AppColors.backgroundDarkBlue,
                              fontWeight: FontWeight.bold,
                            ),
                            "Height"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundDarkBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      WheelSlider(
                        totalCount: _totalCount,
                        initValue: _initValue,
                        showPointer: true,
                        lineColor: AppColors.backgroundDarkBlue,
                        enableAnimation: true,
                        onValueChanged: (val) {
                          setState(() {
                            _currentValue = val;
                          });
                        },
                        hapticFeedbackType: HapticFeedbackType.vibrate,
                        pointerColor: Colors.redAccent,
                      ),
                      Text(
                        _currentValue.toString(),
                        style: const TextStyle(
                          color: AppColors.backgroundDarkBlue,
                          fontSize: 18.0,
                          height: 2.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          /// قسم لاختيار الوزن.
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                          style: TextStyle(
                            color: AppColors.backgroundDarkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                          "Weight"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundDarkBlue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'kg',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                      color: AppColors.backgroundDarkBlue,
                    ),
                    WheelSlider.number(
                      horizontal: true,
                      verticalListHeight: 300.0,
                      perspective: 0.005,
                      squeeze: 1.1,
                      totalCount: _nTotalCount2,
                      initValue: _nInitValue2,
                      unSelectedNumberStyle: const TextStyle(
                        fontSize: 16.0,
                        color: AppColors.backgroundDarkBlue,
                      ),
                      selectedNumberStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.backgroundDarkBlue,
                      ),
                      currentIndex: _nCurrentValue2,
                      onValueChanged: (val) {
                        setState(() {
                          _nCurrentValue2 = val;
                        });
                      },
                      hapticFeedbackType: HapticFeedbackType.heavyImpact,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// رابط لصفحة معلومات مؤشر كتلة الجسم.
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BmiInfoPage()),
                );
              },
              child: const Text(
                'Learn more about BMI (Body Mass Index)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.backgroundDarkBlue,
                  fontSize: 14.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          /// زر لحساب مؤشر كتلة الجسم والتنقل إلى صفحة النتائج.
          GestureDetector(
            onTap: () => navigateToResultPage(
                context, _currentValue.toDouble(), _nCurrentValue2.toDouble()),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.backgroundDarkBlue,
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 30),
              child: const Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

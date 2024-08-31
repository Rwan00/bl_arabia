import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/colors.dart';
import '../../../../core/fonts_stayles.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
     const double value = 0;
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.clear),
                  LinearPercentIndicator(
                    isRTL: true,
                    width: width * 0.7,
                    lineHeight: 10,
                    percent: value,
                    trailing: Text(
                      "${(value * 10).toInt()}/10",
                      style: titleStyle.copyWith(fontSize: 17),
                    ),
                    barRadius: const Radius.circular(5),
                    backgroundColor: Colors.grey,
                    progressColor: kPrimaryColor,
                  ),
                ],
              );
  }
}
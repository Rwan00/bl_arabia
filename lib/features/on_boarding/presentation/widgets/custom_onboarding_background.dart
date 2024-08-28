import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';
import '../../data/imgs.dart';

class CustomOnboardingBackground extends StatelessWidget {
  const CustomOnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
  
      children: [
        Image.asset(
          kBackground,
          width: double.infinity,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  kLogo,
                  width: width * 0.09,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "بالعربية",
                  style: splashTitle,
                ),
              ],
            ),
            Image.asset(
              kPerson1,
            ),
          ],
        ),
      ],
    );
  }
}

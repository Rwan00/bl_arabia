import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/on_boarding/presentation/screens/select_feild_screen.dart';
import 'package:bl_arabia/features/on_boarding/presentation/widgets/custom_onboarding_background.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const CustomOnboardingBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.09,
                ),
                Text(
                  "بناء عادة التعلم الممتعة مع بالعربية !",
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "السماح بالإشعارات وتحسين التعلم بنسبة 200٪",
                  style: subTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height * 0.17,
                ),
                AppBtn(
                    onPressed: () {
                      Navigator.pushNamed(context, SelectFeildScreen.routeName);
                    },
                    label: "ابدأ الآن",)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

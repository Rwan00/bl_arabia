import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/features/home/presentation/widgets/build_levels.dart';
import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
            child: Container(
              height: height * 0.09,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "الوحدة الاولى",
                      style: titleStyle.copyWith(color: Colors.white),
                    ),
                    Text(
                      "صِف عائلتك",
                      style: hintStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: BuildLevels()),
        ],
      ),
    );
  }
}

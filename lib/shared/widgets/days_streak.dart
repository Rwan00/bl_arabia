import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/fonts_stayles.dart';

class DaysStreak extends StatelessWidget {
  const DaysStreak({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Wrap(
                      children: List.generate(
                    kWeekDays.length,
                    (index) => Column(
                      children: [
                        Text(
                          kWeekDays[index],
                          style: titleStyle.copyWith(
                            color: selectedColor == index
                                ? kPrimaryColor
                                : Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: selectedColor == index
                                ? kPrimaryColor
                                : kGreyColor,
                            radius: 16,
                            child: selectedColor == index
                                ? const Icon(
                                    Icons.done,
                                    size: 16,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),);
  }
}

List<String> kWeekDays = [
  "ث",
  "ر",
  "خ",
  "ج",
  "س",
  "ح",
  "ن",
];
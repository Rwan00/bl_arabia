import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/consts.dart';
import '../../core/fonts_stayles.dart';

class StreakMan extends StatelessWidget {
  const StreakMan({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.3,
      child: Stack(
        //clipBehavior: Clip.none,
        //fit: StackFit.expand,
        //alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: width * 0.48,
            height: height * 0.48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kDarkBlueColor,
                width: 5,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            //left: 2,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Text(
                    "1",
                    style: splashTitle.copyWith(fontSize: 100),
                  ),
                ),
                Image.asset(
                  kPersonStreak,
                  width: width * 0.5,
                  //fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

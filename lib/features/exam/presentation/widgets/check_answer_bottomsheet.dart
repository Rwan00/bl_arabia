import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/exam/presentation/screens/half_way_screen.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';
import 'package:flutter/material.dart';

class CheckAnswerBottomSheet extends StatelessWidget {
  final bool isRight;
  const CheckAnswerBottomSheet({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: isRight ? kRightColor : kWrongColor,
      width: double.infinity,
      height: height * 0.25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isRight ? Icons.check_circle : Icons.cancel,
                  color: isRight ? kRightBtnColor : kPrimaryColor,
                  size: 30,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  isRight ? "إجابة صحيحة !" : "خطأ !",
                  style: titleStyle.copyWith(
                    color: isRight ? kRightBtnColor : kPrimaryColor,
                  ),
                ),
              ],
            ),
            Text(
              "ذهبت الى البيت الساعه 12",
              style: titleStyle,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            AppBtn(
              onPressed: () {
                Navigator.of(context).pushNamed(HalfWayScreen.routeName);
              },
              label: "التالى",
              clr: isRight ? kRightBtnColor : kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

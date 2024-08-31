import 'package:bl_arabia/features/exam/data/imgs.dart';
import 'package:bl_arabia/features/exam/presentation/widgets/progress_widget.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';
import 'package:flutter/material.dart';

class HalfWayScreen extends StatelessWidget {
  static String routeName = "Half Way Screen";
  const HalfWayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.06,
          ),
          const ProgressWidget(),
          SizedBox(
            height: height * 0.2,
          ),
          Image.asset(kPersonHalf),
          const Spacer(),
          AppBtn(
            onPressed: () {},
            label: "أكمل الأن",
          ),
          SizedBox(
            height: height * 0.03,
          ),
        ],
      ),
    );
  }
}

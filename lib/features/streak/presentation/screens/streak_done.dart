import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/streak/data/imgs.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_btn.dart';

class StreakDone extends StatelessWidget {
  static String routeName = "Streak Done";
  const StreakDone({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.2,
          ),
          Stack(
            children: [
              Image.asset(kBubble),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "أنشى حسابًا لتحفظ تقدمك!",
                  style: titleStyle.copyWith(fontSize: 25),
                ),
              ),
            ],
          ),
          Image.asset(
            kAccount,
          ),
          const Spacer(),
          Center(
            child: AppBtn(
              onPressed: () {
                Navigator.of(context).pushNamed(StreakDone.routeName);
              },
              label: "أكمل الأن",
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "لاحقًا",
              style: titleStyle,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
        ],
      ),
    );
  }
}

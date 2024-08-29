import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/exam/data/imgs.dart';
import 'package:bl_arabia/features/exam/presentation/screens/exam_screen.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';

import 'package:flutter/material.dart';

class WelcomeExamScreen extends StatelessWidget {
  static String routeName = "Welcome Exam Screen";
  const WelcomeExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Image.asset(
            kPerson1,
            width: width * 0.8,
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            "أولا، ببساطة دعونا نختبر مهاراتك",
            style: titleStyle,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Text(
              "بمجرد الإنتهاء من ذلك، قم بإنشاء تعبير مخصص. يمكنك أن تتعلم.",
              style: subTitleStyle.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          AppBtn(
              onPressed: () {
                Navigator.pushNamed(context, ExamScreen.routeName);
              },
              label: "ابدأ الآن"),
          TextButton(
            onPressed: () {},
            child: Text(
              "تخطي الاختبار",
              style: titleStyle,
            ),
          ),
        ],
      ),
    );
  }
}

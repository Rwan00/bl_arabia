import 'package:bl_arabia/features/home/presentation/screens/home_screen.dart';
import 'package:bl_arabia/features/regestration/data/imgs.dart';
import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';
import '../../../../shared/widgets/app_btn.dart';
import '../../../streak/data/imgs.dart';

class RegisterDoneScreen extends StatelessWidget {
  static String routeName = "Register Done Screen";
  const RegisterDoneScreen({super.key});

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
              Image.asset(
                kBubble,
                
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "مرحبًا ! لقد تم إنشاء حسابك بنجاح",
                  style: titleStyle.copyWith(fontSize: 22),
                 
                ),
              ),
            ],
          ),
          Image.asset(
            kDone,
          ),
          const Spacer(),
          Center(
            child: AppBtn(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              label: "المتابعة",
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

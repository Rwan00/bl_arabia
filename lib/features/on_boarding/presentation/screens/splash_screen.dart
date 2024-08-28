import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/on_boarding/data/imgs.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "Splash Screen";
  final Widget navigator;
  const SplashScreen({super.key, required this.navigator});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
         Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) => navigator),
         );
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              width: width * 0.2,
            ),
            Text(
              "بالعربية",
              style: splashTitle,
            )
          ],
        ),
      ),
    );
  }
}

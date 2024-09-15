import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/features/exam/presentation/screens/exam_screen.dart';
import 'package:bl_arabia/features/exam/presentation/screens/half_way_screen.dart';
import 'package:bl_arabia/features/exam/presentation/screens/welcome_exam_screen.dart';
import 'package:bl_arabia/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:bl_arabia/features/on_boarding/presentation/screens/select_feild_screen.dart';
import 'package:bl_arabia/features/on_boarding/presentation/screens/splash_screen.dart';
import 'package:bl_arabia/features/regestration/presentation/screens/sign_up_screen.dart';
import 'package:bl_arabia/features/streak/presentation/screens/streak_done.dart';
import 'package:bl_arabia/features/streak/presentation/screens/streak_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      routes: {
      SelectFeildScreen.routeName:(_)=>const SelectFeildScreen(),
      WelcomeExamScreen.routeName:(_)=>const WelcomeExamScreen(),
      ExamScreen.routeName:(_)=>const ExamScreen(),
      HalfWayScreen.routeName:(_)=>const HalfWayScreen(),
      StreakScreen.routeName:(_)=> const StreakScreen(),
      StreakDone.routeName:(_)=>const StreakDone(),
      SignUpScreen.routeName:(_)=>const SignUpScreen(),
      },
      home: const SplashScreen(navigator: OnBoardingScreen(),),
      
     
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}

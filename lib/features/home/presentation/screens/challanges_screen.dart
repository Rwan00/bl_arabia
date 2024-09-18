

import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';

class ChallangesScreen extends StatelessWidget {
  const ChallangesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("التحديات",style: titleStyle,),
      ),
    );
  }
}
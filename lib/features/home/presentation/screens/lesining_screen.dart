

import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';

class LesiningScreen extends StatelessWidget {
  const LesiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("الاستماع",style: titleStyle,),
      ),
    );
  }
}
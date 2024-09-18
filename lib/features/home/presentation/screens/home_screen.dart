import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("البيت",style: titleStyle,),
      ),
    );
  }
}
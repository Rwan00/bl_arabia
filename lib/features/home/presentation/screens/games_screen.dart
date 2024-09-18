

import 'package:flutter/material.dart';

import '../../../../core/fonts_stayles.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Text("الالعاب",style: titleStyle,),
      ),
    );
  }
}
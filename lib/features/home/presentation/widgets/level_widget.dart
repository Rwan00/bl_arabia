import 'package:flutter/material.dart';

class LevelWidget extends StatelessWidget {
  final Color color;
  const LevelWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}

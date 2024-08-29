import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String img;
  final String title;
  final bool isTapped;
  const CustomField({
    required this.img,
    required this.title,
    required this.isTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: height * 0.06,
        width: width * 0.9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isTapped ? kPrimaryColor : Colors.white,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(isTapped ? 0.4 : 0.1),
                blurRadius: 2,
                offset: const Offset(2, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  img,
                  width: width * 0.05,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: titleStyle.copyWith(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

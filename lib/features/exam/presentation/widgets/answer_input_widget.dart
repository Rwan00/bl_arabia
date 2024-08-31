import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/fonts_stayles.dart';

class AnswerInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const AnswerInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "اكتب الجملة التى ذُكرت فى الفيديو",
          style: titleStyle.copyWith(
            color: kPrimaryColor,
            fontSize: 25,
          ),
        ),
        Center(
          child: SizedBox(
            height: height * 0.08,
            child: TextFormField(
              controller: controller,
              style: titleStyle.copyWith(fontSize: 20),
              maxLines: 5,
              decoration: InputDecoration(
                hintStyle: hintStyle,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: "اكتب هنا",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

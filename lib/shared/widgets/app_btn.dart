import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final void Function()? onPressed;
  final Color? clr;
  final String label;
  const AppBtn({
    super.key,
    required this.onPressed,
    this.clr,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.all(2)),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          textStyle: WidgetStateProperty.all(
            subTitleStyle.copyWith(
              color: Colors.white,
            ),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            clr ?? kPrimaryColor,
          ),
        ),
        child: Text(
          label,
        ),
      ),
    );
  }
}

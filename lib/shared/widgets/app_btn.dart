import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final void Function()? onPressed;
  final Color? clr;
  final String label;
  final bool? enabled;
  const AppBtn({
    super.key,
    required this.onPressed,
    this.clr,
    required this.label,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.8,
      child: ElevatedButton(
        onPressed: enabled! ? onPressed : null,
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
            clr ?? (enabled! ? kPrimaryColor : kPrimaryColor.withOpacity(0.5)),
          ),
        ),
        child: Text(
          label,
        ),
      ),
    );
  }
}

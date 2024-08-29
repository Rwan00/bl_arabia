import 'package:bl_arabia/core/consts.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle get splashTitle {
  return TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w400,
    color: kPrimaryColor,
    fontFamily: kHayah,
  );
}

TextStyle get titleStyle {
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: kHayah,
  );
}

TextStyle get subTitleStyle {
  return TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w400,
    color: kGreyColor,
    fontFamily: kHayah,
  );
}

TextStyle get hintStyle {
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: kGreyColor.withOpacity(0.4),
    fontFamily: kHayah,
  );
}

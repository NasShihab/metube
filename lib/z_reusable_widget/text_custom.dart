import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text myTextBold({
  required String text,
  double fontSize = 24,
  dynamic fontColor = Colors.black,
}) =>
    Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize.sp,
        color: fontColor,
      ),
    );

Text myTextGrey({
  required String text,
  double fontSize = 16,
  dynamic fontColor = Colors.grey,
  var fontWeight = FontWeight.normal,
  var textAlign = TextAlign.center,
}) =>
    Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
        color: fontColor,
      ),
      textAlign: textAlign,
    );
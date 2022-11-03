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

Widget customBorderTextIcon({
  required String myText,
  dynamic textColor = const Color(0xFFFF4D67),
  double fontSize = 15,
  double borderRadius = 20,
  dynamic borderColor = const Color(0xFFFF4D67),
  dynamic backGroundColor = Colors.white,
  Widget icons = const SizedBox.shrink(),
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          Text(
            myText,
            style: TextStyle(color: textColor, fontSize: fontSize.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

Widget customBorderText({
  required String myText,
  dynamic textColor = const Color(0xFFFF4D67),
  double fontSize = 18,
  double borderRadius = 20,
  dynamic borderColor = const Color(0xFFFF4D67),
  dynamic backGroundColor = Colors.white,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Text(
        myText,
        style: TextStyle(color: textColor, fontSize: fontSize.sp, fontWeight: FontWeight.bold),
      ),
    );

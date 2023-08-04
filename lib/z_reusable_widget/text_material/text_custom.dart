import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';


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
  dynamic textColor,
  double fontSize = 15,
  double borderRadius = 20,
  dynamic borderColor,
  dynamic backGroundColor = Colors.transparent,
  Widget icons = const SizedBox.shrink(),
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
        border: Border.all(color: borderColor = myPinkAccent, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          Text(
            myText,
            style: TextStyle(
                color: textColor = myPinkAccent,
                fontSize: fontSize.sp,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

Widget customBorderText({
  required String myText,
  dynamic textColor,
  double fontSize = 18,
  double borderRadius = 20,
  dynamic borderColor,
  dynamic backGroundColor = Colors.transparent,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
        border: Border.all(color: borderColor = myPinkAccent, width: 2),
      ),
      child: Text(
        myText,
        style: TextStyle(
            color: textColor = myPinkAccent,
            fontSize: fontSize.sp,
            fontWeight: FontWeight.bold),
      ),
    );

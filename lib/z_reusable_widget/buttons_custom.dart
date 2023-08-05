import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';

Widget customButton({
  String title = 'My Button',
  double height = 60,
  double width = double.infinity,
  double fontSize = 18,
  dynamic fontWeight = FontWeight.bold,
  double borderRadius = 30,
  double paddingVertical = 0,
  double paddingHorizontal = 0,
  double outsidePaddingHorizontal = 10,
  required VoidCallback onPressed,
  Color? foregroundColor,
  Color? backgroundColor,
}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: outsidePaddingHorizontal.w),
      height: height.h,
      width: width.w,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: paddingVertical.h, horizontal: paddingHorizontal.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.r)),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) => foregroundColor ?? Colors.white,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) => backgroundColor ?? myPinkAccent,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize.sp, fontWeight: fontWeight),
        ),
      ),
    );

Widget myTextButton({required String icon, required String label}) => SizedBox(
      height: 60.h,
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18.h)),
            elevation: MaterialStateProperty.all(.5)),
        icon: CircleAvatar(
          radius: 11.r,
          backgroundImage: AssetImage(icon),
          backgroundColor: Colors.transparent,
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
    );

Widget myTextField({
  required Icon icon,
  required Icon suffixIcon,
  required String hintText,
}) =>
    SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

Widget myPasswordField({
  required Icon icon,
  required Icon suffixIcon,
  required String hintText,
}) =>
    SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

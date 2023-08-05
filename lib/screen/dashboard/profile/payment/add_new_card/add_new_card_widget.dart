import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

Widget addCardTextField(BuildContext context, {required String hintText}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      height: 60.h,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: bodySmall(context),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

Widget expiryTextField({required String exHintText}) => SizedBox(
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.calendar_month_outlined),
            hintText: exHintText,
            hintStyle: TextStyle(fontSize: 16.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

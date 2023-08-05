import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget summaryRow({required String summaryName, required String summaryPoint}) => Padding(
      padding:
          EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            summaryName,
            style: TextStyle(fontSize: 16.sp),
          ),
          Text(
            summaryPoint,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

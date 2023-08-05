import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors_custom.dart';

ThemeData lightThemeData() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
      primaryColorDark: Colors.white.withOpacity(.3),
      // fontFamily: 'Cantarell',
      textTheme: TextTheme(
        //display
        displayLarge: TextStyle(
            fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.black),
        displayMedium: TextStyle(
            fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.black),
        displaySmall: TextStyle(
            fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.black),
        //body
        bodyLarge: TextStyle(fontSize: 20.sp),
        bodyMedium: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),
        bodySmall: TextStyle(fontSize: 15.sp),
        //title
        titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(fontSize: 20.sp),
      ),
      //
      iconTheme: IconThemeData(color: myPinkAccent, size: 24.sp),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(myPinkAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
          ),
        ),
      ),
      //
      appBarTheme: AppBarTheme(
        foregroundColor: myPinkAccent,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: myPinkAccent,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: myPinkAccent,
          size: 24.sp,
        ),
      ),
      tabBarTheme: TabBarTheme(labelColor: myPinkAccent),
      radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all<Color?>(myPinkAccent)),
      //
    );

ThemeData darkThemeData() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      primaryColorDark: Colors.black.withOpacity(.3),
      // fontFamily: 'Cantarell',
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: TextStyle(
            fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: TextStyle(
            fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: TextStyle(fontSize: 20.sp),
        bodyMedium: TextStyle(fontSize: 18.sp),
        bodySmall: TextStyle(fontSize: 15.sp),
        //title
        titleLarge: TextStyle(fontSize: 24.sp),
        titleMedium: TextStyle(fontSize: 22.sp),
        titleSmall: TextStyle(fontSize: 20.sp),
      ),
      //
      iconTheme: IconThemeData(color: myPinkAccent, size: 24.sp),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(myPinkAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
          ),
        ),
      ),
      //
      appBarTheme: AppBarTheme(
        foregroundColor: myPinkAccent,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: myPinkAccent,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: myPinkAccent,
          size: 24.sp,
        ),
      ),
      tabBarTheme:
          TabBarTheme(labelColor: myPinkAccent, indicatorColor: myPinkAccent),
      radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all<Color?>(myPinkAccent)),
    );

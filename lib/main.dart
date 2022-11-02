import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/custom_colors.dart';
import 'package:metube/z_reusable_widget/routes.dart';

void main() {
  runApp(const MyApp());
}

var mainColor = 0xFFFF4D67;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => MaterialApp(
        initialRoute: '/',
        routes: myRoutes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(mainColor, {
            50: Color(mainColor),
            100: Color(mainColor),
            200: Color(mainColor),
            300: Color(mainColor),
            400: Color(mainColor),
            500: Color(mainColor),
            600: Color(mainColor),
            700: Color(mainColor),
            800: Color(mainColor),
            900: Color(mainColor),
          }),
          iconTheme: IconThemeData(color: Colors.white, size: 24.sp),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: myPinkAccent,
            ),
          ),
        ),
      ),
    );
  }
}

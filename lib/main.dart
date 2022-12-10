import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/theme_data_custom.dart';
import 'package:metube/z_reusable_widget/routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => MaterialApp(
        initialRoute: '/',
        routes: myRoutes,
        debugShowCheckedModeBanner: false,
        theme: myThemeData(),
      ),
    );
  }
}

// ToDo : Create New Password
// ToDo : Forgot Password

// New Windows

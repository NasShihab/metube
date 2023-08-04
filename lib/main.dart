import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/theme_data/theme_data_custom.dart';
import 'package:metube/z_reusable_widget/routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => MaterialApp(
        initialRoute: '/',
        routes: myRoutes,
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        // themeMode: themeManager.themeMode,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
//flutter build apk --release --split-per-abi

// ToDo : Video Comment Part
// ToDo : Live Chat on Comment
// ToDo : Channel View / Video Tab / Video

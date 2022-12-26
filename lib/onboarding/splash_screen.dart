import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../z_reusable_widget/height_weight.dart';
import '../z_reusable_widget/text_custom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/onboard_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  foregroundColor: Colors.white,
                  radius: 40.r,
                  child: Icon(
                    Icons.video_camera_back,
                    //color: Colors.white,
                    size: 40.sp,
                  )),
              width20(),
              myTextBold(text: 'MeTube', fontSize: 50.sp),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Image(
        height: 100.h,
        width: 100.w,
        image: const AssetImage('assets/images/loading2.gif'),
      ),
    );
  }
}

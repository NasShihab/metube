import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../z_reusable_widget/custom_height_weight.dart';
import '../z_reusable_widget/text_custom.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/second_screen');
        },
        child: Image(
          height: 70.h,
          width: 70.w,
          image: const AssetImage('assets/icons/Loading.gif'),
        ),
      ),
    );
  }
}

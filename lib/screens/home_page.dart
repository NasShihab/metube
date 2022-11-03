import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          leadIcon: Icons.video_camera_back,
          iconColor: myPinkAccent,
          iconSize: 30,
          titleSize: 30,
          appBarTitle: 'MeTube',
          actionBarIcons: Row(
            children: [
              Icon(
                Icons.location_searching,
                size: 28.sp,
              ),
              width10(),
              Icon(
                Icons.notifications_active,
                size: 28.sp,
              ),
              width10(),
              CircleAvatar(
                backgroundColor: myPinkAccent,
                radius: 14.r,
                backgroundImage: const AssetImage('assets/images/profile2.png'),
              ),
              width10(),
            ],
          )),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              height20(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  children: [
                    customBorderTextIcon(
                      myText: 'Trending',
                      icons: Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: const Icon(
                          Icons.lightbulb_circle,
                          size: 18,
                        ),
                      ),
                    ),
                    customBorderTextIcon(myText: 'All'),
                    customBorderTextIcon(myText: 'For You'),
                    customBorderTextIcon(myText: 'Live'),
                    customBorderTextIcon(myText: 'Movies'),
                  ],
                ),
              ),
              height25(),
              Stack(
                alignment: Alignment(.95.w, .95.h),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.r),
                    child: const Image(
                      image: AssetImage('assets/images/image1.jpg'),
                    ),
                  ),
                  customBorderText(
                      backGroundColor: Colors.black,
                      textColor: Colors.white,
                      myText: '18 : 27',
                      fontSize: 10,
                      borderColor: Colors.transparent,
                      borderRadius: 10.r)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

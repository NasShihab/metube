import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';
import '../../z_reusable_widget/text_custom.dart';

AppBar homePageAppBar(BuildContext context) => AppBar(
      title: Text(
        'MeTube',
        style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        Icons.video_camera_back,
        size: 30.sp,
      ),
      actions: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/search_page');
              },
              child: Icon(
                Icons.search_outlined,
                size: 28.sp,
              ),
            ),
            width10(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification_page');
              },
              child: Icon(
                Icons.notifications_active,
                size: 28.sp,
              ),
            ),
            width10(),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'Profile',
                    backgroundColor: myPinkAccent,
                    fontSize: 40.sp,
                    gravity: ToastGravity.CENTER);
              },
              child: CircleAvatar(
                backgroundColor: myPinkAccent,
                radius: 14.r,
                backgroundImage: const AssetImage('assets/images/profile2.png'),
              ),
            ),
            width10(),
          ],
        ),
      ],
    );

Widget homeCategory(BuildContext context) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/trending');
            },
            child: customBorderTextIcon(
              myText: 'Trending',
              icons: Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: const Icon(
                  Icons.lightbulb_circle,
                  size: 18,
                ),
              ),
            ),
          ),
          customBorderTextIcon(myText: 'All'),
          customBorderTextIcon(myText: 'For You'),
          customBorderTextIcon(myText: 'Live'),
          customBorderTextIcon(myText: 'Movies'),
        ],
      ),
    );


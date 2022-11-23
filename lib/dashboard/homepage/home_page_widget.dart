import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/more_option_widget.dart';

import '../../z_reusable_widget/appbar_custom.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';
import '../../z_reusable_widget/text_custom.dart';

AppBar homePage(BuildContext context) => customAppBar(
      context,
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
      ),
    );

SingleChildScrollView homeCategory() => SingleChildScrollView(
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
    );

Column customFeed() => Column(
      children: [
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
              borderRadius: 10.r,
            )
          ],
        ),
        height10(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage('assets/images/facebook.png'),
            ),
            width5(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photography | Photography Tips | How to become a photographer | Quick Guid',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  height5(),
                  Text(
                    'Talent Hunt  •  9.5M Views  •  8 months ago',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            width5(),
            Icon(Icons.more_vert, color: myBlack),
          ],
        ),
        height10(),
      ],
    );

Column customFeedShorts(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              borderRadius: 10.r,
            )
          ],
        ),
        height10(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage('assets/images/portrait.jpg'),
            ),
            width5(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photography | Photography Tips | How to become a photographer | Quick Guid',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  height5(),
                  Text(
                    'Talent Hunt  •  9.5M Views  •  8 months ago',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            width5(),
            GestureDetector(
              child: Icon(
                Icons.more_vert,
                color: myBlack,
              ),
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.r),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return moreOption(context);
                    });
              },
            ),
          ],
        ),
        height10(),
        Row(
          children: [
            Icon(
              Icons.video_camera_back,
              size: 30.sp,
            ),
            width10(),
            myTextBold(text: 'Shorts')
          ],
        ),
        height10(),
        SizedBox(
          height: 300.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: shorts(context),
            ),
          ),
        ),
        height20(),
      ],
    );

Widget shorts(BuildContext context) => Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: Image(
            fit: BoxFit.cover,
            height: 300.h,
            width: 200.w,
            image: const AssetImage('assets/images/portrait.jpg'),
          ),
        ),
        Positioned(
          right: 10.w,
          top: 10.h,
          child: GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.r),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return moreOption(context);
                  });
            },
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25.sp,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            width: 190.w,
            child: Text(
              'Makeup tips before go traveling with oo your friends and family',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ),
      ],
    );

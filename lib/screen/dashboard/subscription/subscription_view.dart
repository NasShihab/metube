import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/screen/dashboard/homepage/home_page_view/home_page_widget.dart';
import 'package:metube/screen/dashboard/homepage/news_feed/news_feed.dart';
import 'package:metube/screen/dashboard/subscription/view_all_subscriber.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../z_reusable_widget/colors_custom.dart';

class SubscriptionView extends StatelessWidget {
  SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscriptions',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        leading: Icon(
          CupertinoIcons.video_camera_solid,
          size: 30.sp,
        ),
        actions: [
          Icon(
            CupertinoIcons.search,
            color: primeColor(context),
          ),
          width10(),
          Icon(
            CupertinoIcons.bell,
            color: primeColor(context),
          ),
          width10(),
          InkWell(
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subscription Channel (35)',
                    style: bodyLarge(context),
                  ),
                  TextButton(
                    onPressed: () {
                      pushNavigation(context,
                          pushNav: const ViewAllSubscriber());
                    },
                    child: Text(
                      'View All',
                      style: bodyMedium(context)?.copyWith(color: myPinkAccent),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15.w,
                  children: [
                    circleWithText(context),
                    circleWithText(context),
                    circleWithText(context),
                    circleWithText(context),
                    circleWithText(context),
                    circleWithText(context),
                  ],
                ),
              ),
              height15(),
              HorizontalCategoryWidget(list: subList),
              height15(),
              const NewsFeed(),
            ],
          ),
        ),
      ),
    );
  }

  final List<HorizontalCategoryModel> subList = [
    HorizontalCategoryModel(
      title: 'All',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Today',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Continue Watching',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Trending',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Explore',
      function: (BuildContext context) {},
    ),
  ];
}

Widget circleWithText(BuildContext context) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: const AssetImage(
          'assets/icons/netflix.png',
        ),
        backgroundColor: Colors.black,
        radius: 40.r,
      ),
      height5(),
      Text(
        'Netflix',
        style: bodySmall(context)?.copyWith(color: primeColor(context)),
      )
    ],
  );
}

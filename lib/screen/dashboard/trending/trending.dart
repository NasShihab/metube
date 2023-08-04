import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../homepage/home_page_view/home_page_widget.dart';
import '../homepage/news_feed/news_feed.dart';

class Trending extends ConsumerWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<HorizontalCategoryModel> trendingPageList = [
      HorizontalCategoryModel(
          title: 'All',
          function: (BuildContext context) {
          }),
      HorizontalCategoryModel(
          title: 'Top',
          function: (BuildContext context) {
          }),
      HorizontalCategoryModel(
          title: 'Music',
          function: (BuildContext context) {
          }),
      HorizontalCategoryModel(
          title: 'News',
          function: (BuildContext context) {
          }),
      HorizontalCategoryModel(
          title: 'Gaming',
          function: (BuildContext context) {
          }),
    ];
    return Scaffold(
      appBar: customAppBar(
        context,
        appBarTitle: 'Trending',
        actionBarIcons: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search_page');
              },
              icon: Icon(
                Icons.search_sharp,
                size: 28.sp,
              ),
            ),
            width10(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification_page');
              },
              child: Icon(
                Icons.more_vert_rounded,
                size: 28.sp,
              ),
            ),
            width10(),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: HorizontalCategoryWidget(
                list: trendingPageList,
              ),
            ),
            height20(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: const SingleChildScrollView(
                  child: NewsFeed(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

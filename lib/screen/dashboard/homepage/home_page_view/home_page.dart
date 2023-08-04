import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home_page_widget.dart';
import '../news_feed/news_feed.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: HorizontalCategoryWidget(list: homeCategoryList),
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: NewsFeed(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<HorizontalCategoryModel> homeCategoryList = [
    HorizontalCategoryModel(
        title: 'Trending',
        function: (BuildContext context) {
          Fluttertoast.showToast(msg: 'Trending');
        }),
    HorizontalCategoryModel(
        title: 'All',
        function: (BuildContext context) {
          Fluttertoast.showToast(msg: 'All');
        }),
    HorizontalCategoryModel(
        title: 'For you',
        function: (BuildContext context) {
          Fluttertoast.showToast(msg: 'For you');
        }),
    HorizontalCategoryModel(
        title: 'Live',
        function: (BuildContext context) {
          Fluttertoast.showToast(msg: 'Live');
        }),
    HorizontalCategoryModel(
        title: 'Movies',
        function: (BuildContext context) {
          Fluttertoast.showToast(msg: 'Movies');
        }),
  ];
}

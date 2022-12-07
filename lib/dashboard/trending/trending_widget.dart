import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../z_reusable_widget/colors_custom.dart';

Widget categoryItem({
  required int index,
  required int selectedIndex,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: selectedIndex == index ? myPinkAccent : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Text(
        '${listCategoryTrending[index].title}',
        style: TextStyle(
            color: selectedIndex == index ? Colors.white : myPinkAccent,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold),
      ),
    );

List listCategoryTrending = [
  CategoryListTrending('All'),
  CategoryListTrending('Top'),
  CategoryListTrending('Music'),
  CategoryListTrending('News'),
  CategoryListTrending('Gaming'),
  CategoryListTrending('Media'),
];

class CategoryListTrending {
  final String title;

  CategoryListTrending(
    this.title,
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/homepage/home_page_view/home_page_widget.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../../../z_reusable_widget/colors_custom.dart';

class FAQPage extends StatelessWidget {
  FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          height20(),
          HorizontalCategoryWidget(list: faqTabList),
          height20(),
          SizedBox(
            height: 50.h,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: primeColorDark(context),
                contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                suffixIcon: Icon(Icons.filter_alt, color: myPinkAccent),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: myPinkAccent,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style:
                  bodySmall(context)?.copyWith(color: primeColor(context)),
            ),
          ),
        ],
      ),
    );
  }

  final List<HorizontalCategoryModel> faqTabList = [
    HorizontalCategoryModel(
      title: 'General',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Account',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Service',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Video',
      function: (BuildContext context) {},
    ),
    HorizontalCategoryModel(
      title: 'Network',
      function: (BuildContext context) {},
    ),
  ];
}

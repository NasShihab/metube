import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class EffectWidget extends StatelessWidget {
  const EffectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.50,
      child: DefaultTabController(
        length: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: AppBar(
                title: Text('Effect', style: titleLarge(context)),
                centerTitle: true,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  labelColor: myPinkAccent,
                  indicatorColor: myPinkAccent,
                  tabs: [
                    Tab(
                      icon: Icon(CupertinoIcons.search),
                    ),
                    Tab(
                      icon: Icon(CupertinoIcons.bookmark),
                    ),
                    Tab(text: 'Trending'),
                    Tab(text: 'New'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: TabBarView(
                children: [
                  // Content of Tab 1
                  Center(
                    child: Text('Content for Tab 1'),
                  ),
                  // Content of Tab 2
                  Center(
                    child: Text('Content for Tab 2'),
                  ),
                  // Content of Tab 3
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 20.h,
                      children: List.generate(
                        20,
                        (index) => SizedBox(
                          height: 50.sp,
                          width: 50.sp,
                          child: index.isEven
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: Image.asset(
                                    'assets/images/effect2.jpg',
                                    fit: BoxFit.cover,
                                    height: 50.sp,
                                    width: 50.sp,
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: Image.asset(
                                    'assets/images/effect1.jpg',
                                    fit: BoxFit.cover,
                                    height: 50.sp,
                                    width: 50.sp,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Content for Tab 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

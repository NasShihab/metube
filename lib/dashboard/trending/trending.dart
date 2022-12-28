import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/homepage/news_feed.dart';
import 'package:metube/dashboard/trending/trending_provider.dart';
import 'package:metube/dashboard/trending/trending_widget.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

final trendingItemProvider =
    StateNotifierProvider.autoDispose<TrendingProvider, int>(
        (ref) => TrendingProvider());

class Trending extends ConsumerWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(trendingItemProvider);

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Wrap(
                  // customBorderTextIcon(myText: 'Top'),
                  spacing: 10,
                  children: List.generate(
                    5,
                    (index) => InkWell(
                      onTap: () {
                        ref.read(trendingItemProvider.notifier).selected(index);
                      },
                      child: categoryItem(
                          index: index, selectedIndex: selectedIndex),
                    ),
                  ),
                ),
              ),
            ),
            height20(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: NewsFeed(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

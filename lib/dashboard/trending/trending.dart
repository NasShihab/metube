import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/trending/trending_provider.dart';
import 'package:metube/dashboard/trending/trending_widget.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../homepage/home_page_widget.dart';

final trendingItemProvider = StateNotifierProvider<TrendingProvider, int>(
  (ref) => TrendingProvider(),
);

class Trending extends ConsumerWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(trendingItemProvider);
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: 'Trending'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
            height20(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                  child: customFeed(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

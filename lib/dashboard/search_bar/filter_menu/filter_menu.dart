import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/dashboard/search_bar/filter_menu/custom_dropdown_menu.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../../../z_reusable_widget/colors_custom.dart';
import '../../trending/trending_provider.dart';
import 'filter_menu_provider.dart';

final itemProvider = StateNotifierProvider.autoDispose<TrendingProvider, int>(
    (ref) => TrendingProvider());

final sortByProvider =
    StateNotifierProvider.autoDispose<SortByProvider, String>(
        (ref) => SortByProvider());

final typeProvider = StateNotifierProvider.autoDispose<TypeProvider, String>(
    (ref) => TypeProvider());

final dateProvider = StateNotifierProvider.autoDispose<DateProvider, String>(
    (ref) => DateProvider());

final durationProvider =
    StateNotifierProvider.autoDispose<DurationProvider, String>(
        (ref) => DurationProvider());

class FilterMenu extends ConsumerWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              'Search Filter',
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
            ),
            height20(),
            CustomDropDown(
              text: 'Sort By',
              menuItems: const [
                'Relevance',
                'Upload Date',
                'View Count',
                'Rating'
              ],
              onChanged: (value) {
                ref.read(sortByProvider.notifier).update(value);
              },
              value: ref.watch(sortByProvider),
            ),
            CustomDropDown(
              text: 'Type',
              menuItems: const [
                'All',
                'Video',
                'Channel',
                'Playlist',
                'Music',
              ],
              onChanged: (value) {
                ref.read(typeProvider.notifier).update(value);
              },
              value: ref.watch(typeProvider),
            ),
            CustomDropDown(
              text: 'Update Date',
              menuItems: const [
                'Any Time',
                'Last hour',
                'Today',
                'This week',
                'This month',
                'This year',
              ],
              onChanged: (value) {
                ref.read(dateProvider.notifier).update(value);
              },
              value: ref.watch(dateProvider),
            ),
            CustomDropDown(
              text: 'Duration',
              menuItems: const [
                'Any',
                'Under 4 minutes',
                '4-20 minutes',
                'Over 20 minutes',
              ],
              onChanged: (value) {
                ref.read(durationProvider.notifier).update(value);
              },
              value: ref.watch(durationProvider),
            ),
            height20(),
            Row(
              children: [
                Text(
                  'More Features',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            height10(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Wrap(
                  // customBorderTextIcon(myText: 'Top'),
                  spacing: 10,
                  children: List.generate(
                    8,
                    (index) => InkWell(
                      onTap: () {
                        ref.read(itemProvider.notifier).selected(index);
                      },
                      child: categoryItem(
                        index: index,
                        selectedIndex: ref.watch(itemProvider), //selectedIndex,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            height10(),
            Row(
              children: [
                Expanded(
                  child: customButton(
                    title: 'Reset',
                    backgroundColor: myGrey,
                    foregroundColor: myPinkAccent,
                    borderColor: myGrey,
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Reset',
                        gravity: ToastGravity.CENTER,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: customButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Applied',
                          gravity: ToastGravity.CENTER,
                        );
                      },
                      title: 'Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
  CategoryListTrending('Live'),
  CategoryListTrending('4K'),
  CategoryListTrending('3D'),
  CategoryListTrending('HD'),
  CategoryListTrending('HDR'),
  CategoryListTrending('Subtitle'),
  CategoryListTrending('360'),
  CategoryListTrending('Subtitle/Cc'),
];

class CategoryListTrending {
  final String title;

  CategoryListTrending(
    this.title,
  );
}

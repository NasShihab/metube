import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/search_bar/filter_menu/custom_dropdown_menu.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'filter_menu_provider.dart';

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
            onChanged: (sortby) {
              ref.read(sortByProvider.notifier).update(sortby);
            },
            value: ref.watch(sortByProvider),
          ),
          CustomDropDown(
            text: 'Type',
            menuItems: const ['All', 'Video', 'Channel', 'Playlist', 'Music'],
            onChanged: (sortby) {
              ref.read(typeProvider.notifier).update(sortby);
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
              'This year'
            ],
            onChanged: (sortby) {
              ref.read(dateProvider.notifier).update(sortby);
            },
            value: ref.watch(dateProvider),
          ),
          CustomDropDown(
            text: 'Duration',
            menuItems: const [
              'Any',
              'Under 4 minutes',
              '4-20 minutes',
              'Over 20 minutes'
            ],
            onChanged: (sortby) {
              ref.read(durationProvider.notifier).update(sortby);
            },
            value: ref.watch(durationProvider),
          ),
          height20(),
          Row(
            children: [
              Text(
                'More Features',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle tStyle() => TextStyle(
      fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold);

  Text tText({
    required String text,
  }) =>
      Text(
        text,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
      );
}

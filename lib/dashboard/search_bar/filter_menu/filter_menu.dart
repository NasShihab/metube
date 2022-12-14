import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

import 'filter_menu_provider.dart';

final filterMenuProvider =
    StateNotifierProvider.autoDispose<SortByProvider, String>(
        (ref) => SortByProvider());

class FilterMenu extends ConsumerWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMenu = ref.watch(filterMenuProvider);
    double menuWidth = 150.w;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
      child: Column(
        children: [
          Text(
            'Search Filter',
            style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
          ),
          height20(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tText(text: 'Sort By'),
              SizedBox(
                width: menuWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: selectedMenu,
                      style: tStyle(),
                      items: <String>['Relevance', 'View', 'Latest']
                          .map((String value) => DropdownMenuItem<String>(
                              value: value, child: Text(value)))
                          .toList(),
                      onChanged: (sortby) {
                        ref.read(filterMenuProvider.notifier).update(sortby);
                      }),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tText(text: 'Type'),
              SizedBox(
                width: menuWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: selectedMenu,
                      style: tStyle(),
                      items: <String>['Relevance', 'View', 'Latest']
                          .map((String value) => DropdownMenuItem<String>(
                              value: value, child: Text(value)))
                          .toList(),
                      onChanged: (sortby) {
                        ref.read(filterMenuProvider.notifier).update(sortby);
                      }),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tText(text: 'Upload Date'),
              SizedBox(
                width: menuWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: selectedMenu,
                      style: tStyle(),
                      items: <String>['Relevance', 'View', 'Latest']
                          .map((String value) => DropdownMenuItem<String>(
                              value: value, child: Text(value)))
                          .toList(),
                      onChanged: (sortby) {
                        ref.read(filterMenuProvider.notifier).update(sortby);
                      }),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tText(text: 'Duration'),
              SizedBox(
                width: menuWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: selectedMenu,
                      style: tStyle(),
                      items: <String>['Relevance', 'View', 'Latest']
                          .map((String value) => DropdownMenuItem<String>(
                              value: value, child: Text(value)))
                          .toList(),
                      onChanged: (sortby) {
                        ref.read(filterMenuProvider.notifier).update(sortby);
                      }),
                ),
              )
            ],
          ),
          height20(),
          Row(
            children: [
              Text('More Features',style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
            ],
          )
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

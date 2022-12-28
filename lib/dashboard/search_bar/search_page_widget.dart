import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/search_bar/filter_menu/filter_menu.dart';
import 'package:metube/dashboard/search_bar/search_page_provider.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';

final searchIndexProvider = StateNotifierProvider<SearchPageProvider, List>(
    (ref) => SearchPageProvider());

AppBar customSearchBar(
  BuildContext context, {
  required Function(String) onChanged,
  required Widget prefixIcon,
  String hintText = 'Search',
}) =>
    AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          size: 28.sp,
        ),
      ),
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: myPinkAccent,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                  color: myGrey),
              child: TextField(
                onChanged:
                    onChanged, //ref.read(searchIndexProvider.notifier).updateSearch(value);
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30.r),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return const FilterMenu();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.filter_list,
                      size: 30.sp,
                    ),
                  ),
                  prefixIcon: prefixIcon,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          width10(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/listening_page');
            },
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.red[50],
              child: Icon(
                Icons.mic,
                size: 30.sp,
              ),
            ),
          )
        ],
      ),
    );

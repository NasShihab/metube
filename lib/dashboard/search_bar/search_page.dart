import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/search_bar/search_page_provider.dart';
import 'package:metube/dashboard/search_bar/search_page_widget.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';

final searchIndexProvider = StateNotifierProvider<SearchPageProvider, List>(
    (ref) => SearchPageProvider());

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayMusicList = ref.watch(searchIndexProvider);

    return Scaffold(
      appBar: appBarModified(
        context,
        onChanged: (String value) {
          ref.read(searchIndexProvider.notifier).updateSearch(value);
        },
      ),
      body: SafeArea(
        child: displayMusicList.isEmpty
            ? const Center(
                child: Image(
                  image: AssetImage('assets/images/error.png'),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        Text(
                          'Clear All',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: myPinkAccent),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: displayMusicList.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        '${displayMusicList[index].title}',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      trailing: Icon(
                        displayMusicList[index].icon,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

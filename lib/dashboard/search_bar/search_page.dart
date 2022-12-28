import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/search_bar/search_clicked.dart';
import 'package:metube/dashboard/search_bar/search_page_provider.dart';
import 'package:metube/dashboard/search_bar/search_page_widget.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

final searchIndexProvider = StateNotifierProvider<SearchPageProvider, List>(
    (ref) => SearchPageProvider());


class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayMusicList = ref.watch(searchIndexProvider);


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            customSearchBar(
              context,
              onChanged: (String value) {
                ref.read(searchIndexProvider.notifier).updateSearch(value);
              },
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  size: 30.sp,
                ),
              ),
            ),
            displayMusicList.isEmpty
                ? Center(
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
                      height10(),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: displayMusicList.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            var updateIndex = displayMusicList[index];

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SearchClicked(searchIndex: updateIndex),
                              ),
                            );
                          },
                          visualDensity: VisualDensity.compact,
                          title: Text(
                            '${displayMusicList[index].title}',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          trailing: IconButton(
                            visualDensity: VisualDensity.compact,
                            onPressed: () {},
                            icon: Icon(Icons.close),
                            iconSize: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/upload/upload_short/upload_short_view.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class AddSoundPage extends StatelessWidget {
  const AddSoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close),
        ),
        title: Wrap(
          children: [
            Text(
              'Sound',
              style: titleLarge(context)?.copyWith(color: myPinkAccent),
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 25.sp,
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Icon(
              Icons.more_horiz,
              size: 25.sp,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.6),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    suffixIcon: Icon(Icons.filter_alt, color: myPinkAccent),
                    prefixIcon: Icon(CupertinoIcons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            DefaultTabController(
              length: 2, // Change this based on the number of tabs
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: myPinkAccent,
                      tabs: [
                        Tab(text: 'Discover'),
                        Tab(text: 'Favorite'),
                        // Add more tabs if needed
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Wrap(
                            children: List.generate(
                              8,
                              (index) => Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: ListTile(
                                  title: Text(
                                    'As It Was',
                                    style: titleSmall(context),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Harry Style',
                                        style: bodySmall(context),
                                      ),
                                      Text(
                                        '00 : 25',
                                        style: bodySmall(context),
                                      ),
                                    ],
                                  ),
                                  leading: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/effect1.jpg',
                                      fit: BoxFit.cover,
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                  ),
                                  trailing: Chip(
                                    backgroundColor: Colors.transparent,
                                    label: Text(
                                      '65.1M',
                                      style: bodySmall(context),
                                    ),
                                    deleteIcon: Icon(
                                      index.isEven
                                          ? Icons.check
                                          : Icons.bookmark,
                                      color: myPinkAccent,
                                    ),
                                    onDeleted: () {
                                      pushNavigation(context, pushNav: UploadShort(selected: 2,));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),

                          ///
                          Center(child: Text('Tab 2 content')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

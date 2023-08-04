import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/library/download/download_view.dart';
import 'package:metube/screen/dashboard/library/history/history_view.dart';
import 'package:metube/screen/dashboard/library/your_videos/your_videos_view.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        leading: Icon(
          Icons.video_camera_back,
          size: 30.sp,
        ),
        actions: [
          Icon(
            CupertinoIcons.search,
            color: primeColor(context),
          ),
          width10(),
          Icon(
            CupertinoIcons.bell,
            color: primeColor(context),
          ),
          width10(),
          CircleAvatar(
            backgroundImage: const AssetImage('assets/images/portrait2.jpg'),
            radius: 15.r,
          ),
          width15(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  'History',
                  style: bodyMedium(context)
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                trailing: TextButton(
                  onPressed: () {
                    pushNavigation(context, pushNav: const HistoryView());
                  },
                  child: Text(
                    'View All',
                    style: bodyMedium(context)?.copyWith(
                        color: myPinkAccent, fontWeight: FontWeight.bold),
                  ),
                ),
                contentPadding: EdgeInsets.zero,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    7,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: Image.asset(
                                    'assets/images/travel.png',
                                    height: 110.h,
                                    width: 160.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 1.h,
                                  right: 1.w,
                                  child: Chip(
                                    label: Text(
                                      '56:45',
                                      style: bodySmall(context)
                                          ?.copyWith(fontSize: 12.sp),
                                    ),
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 160.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Text(
                                      'International Music Remix 2022 and many more',
                                      style: bodySmall(context)?.copyWith(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.more_vert,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'World of Music',
                              style:
                                  bodySmall(context)?.copyWith(fontSize: 14.sp),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              height15(),
              customCircleAvatarWithTitle(
                context,
                icon: CupertinoIcons.play_circle_fill,
                title: 'Your Videos',
                onTap: () {
                  pushNavigation(
                    context,
                    pushNav: const YourVideosView(),
                  );
                },
              ),
              customCircleAvatarWithTitle(
                context,
                icon: CupertinoIcons.arrow_down_circle_fill,
                title: 'Downloads',
                onTap: () {
                  pushNavigation(context, pushNav: const DownloadView());
                },
              ),
              height15(),
              ListTile(
                title: Text(
                  'Playlist',
                  style: bodyMedium(context)
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Recently Added ▼',
                    style: bodyMedium(context)?.copyWith(
                        color: myPinkAccent, fontWeight: FontWeight.bold),
                  ),
                ),
                contentPadding: EdgeInsets.zero,
              ),
              customCircleAvatarWithTitle(
                context,
                icon: CupertinoIcons.add_circled_solid,
                title: 'New Playlist',
                onTap: () {},
              ),
              customCircleAvatarWithTitle(
                context,
                icon: CupertinoIcons.clock_fill,
                title: 'Watch Later',
                onTap: () {},
              ),
              customCircleAvatarWithTitle(
                context,
                icon: CupertinoIcons.hand_thumbsup_fill,
                title: 'Liked Videos',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customCircleAvatarWithTitle(
  BuildContext context, {
  required var icon,
  String title = 'Text',
  required void Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: myGrey,
              child: Icon(
                icon,
                size: 30.sp,
                color: myPinkAccent,
              ),
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: bodyMedium(context)
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

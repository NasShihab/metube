import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';

class WatchLaterView extends StatelessWidget {
  const WatchLaterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watch Later',
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
            Icons.more_vert,
            color: primeColor(context),
          ),
          width15(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.play_circle_fill),
                      label: Text(
                        'Play',
                        style: bodyMedium(context),
                      ),
                    ),
                  ),
                  width10(),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.shuffle),
                      label: Text(
                        'Play',
                        style:
                            bodyMedium(context)?.copyWith(color: myPinkAccent),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(myPinkAccent),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              height20(),
              ListTile(
                title: Row(
                  children: [
                    const Icon(CupertinoIcons.cloud_download),
                    width10(),
                    Text(
                      '24 Unwatched Videos',
                      style: bodyMedium(context),
                    ),
                  ],
                ),
                trailing: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sort By ▼',
                      style: bodyMedium(context)?.copyWith(color: myPinkAccent),
                    )),
                contentPadding: EdgeInsets.zero,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.equal,
                            color: primeColor(context),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              'assets/images/travel.png',
                              height: 100.h,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            title: Text(
                              'International Music Remix 2022 and many more',
                              style: bodySmall(context)?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: primeColor(context),
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BBC Earth',
                                  style: bodySmall(context)
                                      ?.copyWith(color: primeColor(context)),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'World of music · 6.5M views',
                                    style: bodySmall(context)
                                        ?.copyWith(fontSize: 14.sp),
                                  ),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.more_vert_rounded,
                              size: 25.sp,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return height15();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

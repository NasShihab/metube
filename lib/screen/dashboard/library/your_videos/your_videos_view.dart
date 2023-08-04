import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/homepage/home_page_view/home_page_widget.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';
import '../../../video_player/video_channel/video_channel_widget.dart';

class YourVideosView extends StatelessWidget {
  const YourVideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Videos',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HorizontalCategoryWidget(
                  list: const VideoTab().videoCatList(context)),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              style: bodyMedium(context),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'World of music · 6.5M views',
                                style: bodySmall(context),
                              ),
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

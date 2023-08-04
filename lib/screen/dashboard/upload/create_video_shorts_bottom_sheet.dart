import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/upload/go_live/go_live_view.dart';
import 'package:metube/screen/dashboard/upload/upload_short/upload_short_view.dart';
import 'package:metube/screen/dashboard/upload/upload_video/upload_video_details.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class UploadBottomSheet extends StatelessWidget {
  const UploadBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .40,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Create',
                style: titleLarge(context),
              ),
            ),
            height40(),
            uploadPageWidget(
              context,
              text: 'Create a short',
              icon: FontAwesomeIcons.video,
              onTap: () {
                pushNavigation(context,
                    pushNav: UploadShort(
                      selected: 1,
                    ));
              },
            ),
            height20(),
            uploadPageWidget(
              context,
              text: 'Upload a video',
              icon: FontAwesomeIcons.video,
              onTap: () {
                pushNavigation(context, pushNav: UploadVideoDetails());
              },
            ),
            height20(),
            uploadPageWidget(
              context,
              text: 'Go Live',
              icon: FontAwesomeIcons.video,
              onTap: () {
                pushNavigation(context, pushNav: GoLive());
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget uploadPageWidget(BuildContext context,
    {required String text, required var icon, required void Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: myGrey,
          child: Icon(
            icon,
            size: 25.sp,
            color: myPinkAccent,
          ),
        ),
        width20(),
        Text(
          text,
          style: titleSmall(context),
        )
      ],
    ),
  );
}

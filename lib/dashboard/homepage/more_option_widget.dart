import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../z_reusable_widget/height_weight.dart';
import 'radio_button_widget.dart';

Widget moreOption(BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * .50,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: ListView(
          children: [
            Text(
              'More Option',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            height30(),
            inMoreOption(
              icon: Icons.timelapse,
              text: 'Save to watch later',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.sticky_note_2_outlined,
              text: 'Save to playlist',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.cloud_download_outlined,
              text: 'Download video',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.share_outlined,
              text: 'Share',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.not_interested,
              text: 'Not Interested',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.no_backpack_outlined,
              text: 'Don\'t recommend this channel',
              onTapped: () {},
            ),
            inMoreOption(
              icon: Icons.report_gmailerrorred,
              text: 'Report',
              onTapped: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.r),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return const RadioButton();
                    });
              },
            ),
          ],
        ),
      ),
    );

Widget inMoreOption({
  required var icon,
  required String text,
  required VoidCallback onTapped,
}) =>
    GestureDetector(
      onTap: onTapped,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30.sp,
              //color: Colors.grey[700],
            ),
            width15(),
            Text(
              text,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );

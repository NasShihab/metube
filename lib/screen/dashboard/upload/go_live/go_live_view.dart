import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/upload/upload_short/add_sound_page.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class GoLive extends StatelessWidget {
  const GoLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Image.asset(
            'assets/images/portrait3.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: myHeight(context) * .05,
            left: myWidth(context) * .05,
            right: myWidth(context) * .05,
            child: InkWell(
              onTap: () {
                pushNavigation(context, pushNav: const AddSoundPage());
              },
              child: Chip(
                label: Text(
                  'Add a sound',
                  style: bodySmall(context)?.copyWith(color: Colors.white),
                ),
                avatar: Icon(
                  FontAwesomeIcons.music,
                  size: 15.sp,
                ),
                backgroundColor: Colors.transparent.withOpacity(.6),
              ),
            ),
          ),
          Positioned(
            top: myHeight(context) * .05,
            left: myWidth(context) * .05,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
              ),
            ),
          ),
          Positioned(
            right: myWidth(context) * .05,
            top: myHeight(context) * .12,
            child: Column(
              children: [
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: Icons.flip_camera_ios,
                  text: 'Flip',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: FontAwesomeIcons.gauge,
                  text: 'Speed',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: FontAwesomeIcons.hurricane,
                  text: 'Filter',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: Icons.face,
                  text: 'Beauty',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: Icons.timer,
                  text: 'Timer',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: CupertinoIcons.text_bubble_fill,
                  text: 'Com..',
                ),
                uploadShortWidget(
                  context,
                  onTap: () {},
                  icon: Icons.flash_on,
                  text: 'Flash',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.video_camera_solid,
            size: 25.sp,
          ),
          label: Text(
            'Go Live',
            style: bodyLarge(context),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
              EdgeInsets.symmetric(vertical: 15.h),
            ),
          ),
        ),
      ),
    );
  }
}

Widget uploadShortWidget(BuildContext context,
    {required void Function() onTap, required var icon, required String text}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30.sp,
        ),
        height5(),
        Text(
          text,
          style: bodySmall(context)?.copyWith(color: Colors.white),
        ),
        height30(),
      ],
    ),
  );
}

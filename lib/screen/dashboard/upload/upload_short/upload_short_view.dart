import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/upload/upload_short/add_details/add_details.dart';
import 'package:metube/screen/dashboard/upload/upload_short/add_sound_page.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import 'effect_widget.dart';

class UploadShort extends StatelessWidget {
  const UploadShort({super.key, required this.selected});
  final int selected;

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
            child: const Icon(
              Icons.close,
            ),
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
          // timer
          selected == 1
              ? Positioned(
                  left: myWidth(context) * .05,
                  bottom: myHeight(context) * .1,
                  child: Wrap(
                    spacing: 10.w,
                    children: [
                      Chip(
                        label: Text(
                          '1m',
                          style: bodySmall(context),
                        ),
                        backgroundColor: Colors.transparent.withOpacity(.6),
                      ),
                      Chip(
                        label: Text(
                          '30s',
                          style: bodySmall(context),
                        ),
                        backgroundColor: Colors.transparent.withOpacity(.6),
                      ),
                      Chip(
                        label: Text(
                          '15s',
                          style:
                              bodySmall(context)?.copyWith(color: Colors.white),
                        ),
                        backgroundColor: Colors.transparent.withOpacity(.6),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selected == 1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50.r),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return const EffectWidget();
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          CupertinoIcons.light_max,
                          color: Colors.white,
                          size: 40.sp,
                        ),
                        Text(
                          'Effects',
                          style:
                              bodySmall(context)?.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.r,
                  child: CircleAvatar(
                    backgroundColor: myPinkAccent,
                    radius: 35.r,
                    child: const Icon(
                      FontAwesomeIcons.video,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.cloud_upload,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                    Text(
                      'Upload',
                      style: bodySmall(context)?.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(myPinkAccent),
                        ),
                        child: const Text('Draft'),
                      ),
                    ),
                  ),
                  width10(),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          pushNavigation(context, pushNav: const AddDetailsPage());
                        },
                        style: const ButtonStyle(),
                        child: const Text('Next'),
                      ),
                    ),
                  ),
                ],
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

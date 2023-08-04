import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/shorts/shorts_button/shorts_comments.dart';
import 'package:metube/screen/dashboard/homepage/news_feed/more_option_widget.dart';
import 'package:metube/screen/video_player/video_channel/video_channel_view.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:video_player/video_player.dart';

import '../../../z_reusable_widget/height_weight.dart';
import '../../../z_reusable_widget/text_material/text_theme.dart';
import '../../video_player/widget/icon_text_widget.dart';

class Shorts extends StatefulWidget {
  const Shorts({
    super.key,
    required this.videoURL,
    required this.videDescription,
  });

  // final String videoURL =
  //     'https://assets.mixkit.co/videos/preview/mixkit-photo-session-of-a-girl-in-the-desert-34405-large.mp4';
  final String videoURL;
  final String videDescription;

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoURL))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              height: double.infinity,
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(
                      color: Colors.black,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.height * 0.05,
            child: Wrap(
              spacing: 20.w,
              children: [
                FaIcon(
                  CupertinoIcons.search,
                  color: Theme.of(context).primaryColorLight.withOpacity(1),
                ),
                FaIcon(
                  FontAwesomeIcons.camera,
                  color: Theme.of(context).primaryColorLight.withOpacity(1),
                ),
              ],
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: 5.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: list(context)
                  .map((data) => Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: iconText(context,
                            icon: data.icon,
                            text: data.text,
                            onTap: data.onTap),
                      ))
                  .toList(),
            ),
          ),
          Positioned(
            left: 1.w,
            bottom: 5.h,
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: EdgeInsets.only(left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.videDescription,
                    style: bodyMedium(context)?.copyWith(color: Colors.white),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  height10(),
                  InkWell(
                    onTap: () {
                      pushNavigation(context, pushNav: const VideoChannel());
                    },
                    child: Wrap(
                      spacing: 15.w,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 26.r,
                          backgroundImage:
                              const AssetImage('assets/images/portrait1.jpg'),
                        ),
                        Text(
                          'Jenny Wilson',
                          style: bodyMedium(context)?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Chip(
                          label: Text(
                            'Subscribe',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.white),
                          ),
                          backgroundColor: myPinkAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<IconText> list(BuildContext context) {
    return [
      IconText(text: '', icon: Icons.flag, onTap: () {}),
      IconText(
          text: '100K', icon: CupertinoIcons.hand_thumbsup_fill, onTap: () {}),
      IconText(
          text: '36K', icon: CupertinoIcons.hand_thumbsdown_fill, onTap: () {}),
      IconText(
          text: '2.4K',
          icon: CupertinoIcons.chat_bubble_text_fill,
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const ShortsComments();
                });
          }),
      IconText(text: '2.2K', icon: FontAwesomeIcons.share, onTap: () {}),
      IconText(
          text: 'More',
          icon: Icons.more_horiz,
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return moreOptionItem(context);
                  // return ShortsComments();
                });
          }),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

Widget iconText(BuildContext context,
        {required icon, required text, required onTap}) =>
    InkWell(
      onTap: onTap,
      child: Column(
        children: [
          FaIcon(
            icon,
            size: 30.sp,
            color: Colors.white,
          ),
          height5(),
          Text(
            text,
            style: bodySmall(context)?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );

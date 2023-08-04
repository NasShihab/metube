import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/video_player/video_channel/video_channel_view.dart';
import 'package:metube/screen/video_player/widget/video_description.dart';

import 'widget/icon_text_widget.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';
import '../../z_reusable_widget/text_material/text_theme.dart';

class VideoPlayWidget extends StatelessWidget {
  const VideoPlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            'Fox dives head first into snow | Amazon Jungle | Discovery Channel',
            style: titleMedium(context)?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          subtitle: Text(
            '2.5M views · 1 years ago',
            style: bodySmall(context),
          ),
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      '20K',
                      style: bodyLarge(context),
                    ),
                    subtitle: Text(
                      'Likes',
                      style: bodySmall(context),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      '879',
                      style: bodyLarge(context),
                    ),
                    subtitle: Text(
                      'Dislikes',
                      style: bodySmall(context),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      '2.5 M',
                      style: bodyLarge(context),
                    ),
                    subtitle: Text(
                      'Views',
                      style: bodySmall(context),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Dec 24',
                      style: bodyLarge(context),
                    ),
                    subtitle: Text(
                      '2022',
                      style: bodySmall(context),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(videoDescription[0]),
            )
          ],
        ),
        height15(),
        const IconTextWidget(),
        height30(),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, const VideoChannel().pageName);
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 30.r,
              backgroundImage: const AssetImage('assets/images/portrait1.jpg'),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'BBC Earth',
                    style: titleSmall(context),
                  ),
                  width5(),
                  Icon(
                    Icons.verified_rounded,
                    color: Colors.blue,
                    size: 20.sp,
                  )
                ],
              ),
            ),
            subtitle: Text(
              '12.2M Subscribers',
              style: bodySmall(context),
            ),
            trailing: Chip(
              label: Text(
                'Subscribe',
                style: bodySmall(context)?.copyWith(color: Colors.white),
              ),
              backgroundColor: myPinkAccent,
            ),
          ),
        ),
        ListTile(
          subtitle: Row(
            children: [
              Text(
                'Comments ',
                style: bodyMedium(context),
              ),
              Text(
                '9.2K',
                style:
                    bodyMedium(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          trailing: InkWell(
            onTap: () {},
            child: Icon(
              CupertinoIcons.arrow_up_arrow_down,
              size: 20.sp,
            ),
          ),
        ),
      ],
    );
  }
}

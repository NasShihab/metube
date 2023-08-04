import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/screen/dashboard/upload/upload_short/add_details/add_details.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../../z_reusable_widget/buttons_custom.dart';

class UploadVideoDetails extends StatelessWidget {
  const UploadVideoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add details',
          style: titleMedium(context)?.copyWith(color: myPinkAccent),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: InkWell(
              child: Icon(Icons.more_horiz),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      'assets/images/travel.png',
                      width: double.infinity,
                      height: 220.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5.h,
                    right: myWidth(context) * .30,
                    child: InkWell(
                      onTap: () {
                        Fluttertoast.showToast(msg: 'Change Thumbnail');
                      },
                      child: Text(
                        'Change Thumbnail',
                        style: bodyMedium(context)?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              height15(),
              Expanded(
                flex: 4,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text('Add a title here'),
                    height15(),
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                          border: InputBorder.none,
                          hintText: 'Add your title'),
                      style: bodySmall(context),
                    ),
                    add_details_widget(
                      context,
                      icon: CupertinoIcons.pencil_ellipsis_rectangle,
                      text: 'Add Description',
                      trailingText: '',
                      onTap: () {},
                    ),
                    add_details_widget(
                      context,
                      icon: CupertinoIcons.eye,
                      text: 'Visibility',
                      trailingText: 'Public',
                      onTap: () {},
                    ),
                    add_details_widget(
                      context,
                      icon: Icons.group_add_outlined,
                      text: 'Select Audience',
                      trailingText: '',
                      onTap: () {},
                    ),
                    add_details_widget(
                      context,
                      icon: CupertinoIcons.calendar,
                      text: 'Schedule',
                      trailingText: 'Now',
                      onTap: () {},
                    ),
                    add_details_widget(
                      context,
                      icon: CupertinoIcons.chat_bubble_text,
                      text: 'Comments',
                      trailingText: 'Allow all comments',
                      onTap: () {},
                    ),
                    add_details_widget(
                      context,
                      icon: CupertinoIcons.map_pin_ellipse,
                      text: 'Location',
                      trailingText: '',
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        CupertinoIcons.play_circle,
                        size: 25.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        'Add to playlist',
                        style: bodyMedium(context),
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: InkWell(
                            child: Icon(CupertinoIcons.add_circled,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
                    width: double.infinity,
                    child:
                        customButton(onPressed: () {}, title: 'Upload Video'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/model/share_button_model.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';

class IconTextWidget extends StatelessWidget {
  IconTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: IconTextWidget()
            .list(context)
            .map((data) => iconText(context,
                icon: data.icon, text: data.text, onTap: data.onTap))
            .toList(),
      ),
    );
  }

  List<IconText> list(BuildContext context) {
    return [
      IconText(text: '20 K', icon: CupertinoIcons.hand_thumbsup, onTap: () {}),
      IconText(text: '1K', icon: CupertinoIcons.hand_thumbsdown, onTap: () {}),
      IconText(
          text: 'Live Chat', icon: CupertinoIcons.chat_bubble, onTap: () {}),
      IconText(
          text: 'Share',
          icon: CupertinoIcons.share,
          onTap: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.width * .7,
                    child: Column(
                      children: [
                        height20(),
                        Center(
                          child: Text(
                            'Share',
                            style: titleLarge(context),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Theme.of(context).primaryColor.withOpacity(.5),
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                        height20(),
                        Expanded(
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 5, // Set the numb
                            children: List.generate(
                              shareButtonList.length,
                              (index) => Column(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        shareButtonList[index].image),
                                    height: 40.h,
                                    width: 40.w,
                                    fit: BoxFit.cover,
                                  ),
                                  height5(),
                                  Text(
                                    shareButtonList[index].text,
                                    style: bodySmall(context),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                });
          }),
      IconText(
          text: 'Download', icon: CupertinoIcons.cloud_download, onTap: () {}),
      IconText(
          text: 'Save', icon: CupertinoIcons.checkmark_rectangle, onTap: () {}),
    ];
  }
}

class IconText {
  String text;
  var icon;
  void Function() onTap;

  IconText({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}

Widget iconText(BuildContext context,
        {required icon, required text, required onTap}) =>
    InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            size: 30.sp,
            color: Theme.of(context).primaryColor.withOpacity(.8),
          ),
          height5(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: bodySmall(context)?.copyWith(),
            ),
          ),
        ],
      ),
    );

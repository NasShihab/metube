import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/upload/upload_short/add_details/add_details_select_option_page.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class AddDetailsPage extends StatelessWidget {
  const AddDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Details',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.more_horiz),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      'assets/images/portrait3.jpg',
                      height: 160.h,
                      width: 110.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  width10(),
                  Expanded(
                    child: TextFormField(
                      maxLines: 6,
                      style: bodySmall(context),
                      decoration: InputDecoration(
                        hintText: 'Enter your caption',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.3),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              addDetailsWidget(
                context,
                icon: CupertinoIcons.eye,
                text: 'Visibility',
                trailingText: 'Public',
                onTap: () {
                  pushNavigation(context,
                      pushNav: const AddDetailsOptions(selectedValue: 1));
                },
              ),
              addDetailsWidget(
                context,
                icon: Icons.group,
                text: 'Select Audience',
                trailingText: '',
                onTap: () {
                  pushNavigation(context,
                      pushNav: const AddDetailsOptions(selectedValue: 2));
                },
              ),
              addDetailsWidget(
                context,
                icon: CupertinoIcons.calendar,
                text: 'Schedule',
                trailingText: 'Publish Now',
                onTap: () {
                  pushNavigation(context,
                      pushNav: const AddDetailsOptions(selectedValue: 3));
                },
              ),
              addDetailsWidget(
                context,
                icon: Icons.insert_comment_outlined,
                text: 'Comments',
                trailingText: 'Allow all comments',
                onTap: () {
                  pushNavigation(context,
                      pushNav: const AddDetailsOptions(selectedValue: 4));
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
        width: double.infinity,
        child: customButton(onPressed: () {}, title: 'Upload Shorts'),
      ),
    );
  }
}

Widget addDetailsWidget(
  BuildContext context, {
  required var icon,
  required String text,
  required String trailingText,
  required void Function() onTap,
}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 25.sp,
      color: Theme.of(context).primaryColor,
    ),
    title: Text(
      text,
      style: bodyMedium(context),
      overflow: TextOverflow.ellipsis,
    ),
    trailing: InkWell(
      onTap: onTap,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Text(
              trailingText,
              style: bodySmall(context)?.copyWith(color: Theme.of(context).primaryColor),
            ),
            width10(),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 20.sp,
                color: Theme.of(context).primaryColor
            ),
          ],
        ),
      ),
    ),
  );
}

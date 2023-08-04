import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class ViewAllSubscriber extends StatelessWidget {
  const ViewAllSubscriber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Channel list',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        actions: [
          Icon(
            CupertinoIcons.search,
            color: primeColor(context),
          ),
          width10(),
          Icon(
            Icons.more_horiz,
            color: primeColor(context),
          ),
          width15(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(
                    'Most Relevant',
                    style: bodySmall(context)?.copyWith(color: myPinkAccent),
                  ),
                  backgroundColor: Colors.white,
                  deleteIcon: Icon(
                    Icons.add_road_rounded,
                    color: myPinkAccent,
                  ),
                  onDeleted: () {},
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    side: BorderSide(color: myPinkAccent, width: 2.w),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Manage',
                    style: bodySmall(context)?.copyWith(
                        color: myPinkAccent, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: List.generate(15, (index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage:
                          const AssetImage('assets/icons/netflix.png'),
                      radius: 30.r,
                    ),
                    title: Text(
                      'BBC Earth',
                      style: bodyLarge(context),
                    ),
                    trailing: index.isOdd
                        ? CircleAvatar(
                            backgroundColor: myPinkAccent,
                            radius: 5.r,
                          )
                        : Text(
                            'Live',
                            style: bodyMedium(context)
                                ?.copyWith(color: myPinkAccent),
                          ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

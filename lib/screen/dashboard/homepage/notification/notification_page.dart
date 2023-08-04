import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

import 'notification_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myTabBar(context,
            title: 'Notification',
            leftIcon: const Icon(
              Icons.arrow_back,
            ),
            rightIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.search_sharp,
                      size: 28.sp,
                    ),
                  ),
                  width10(),
                  Icon(
                    Icons.more_vert,
                    size: 28.sp,
                  ),
                ],
              ),
            )),
        body: TabBarView(
          children: [
            allNotification(),
            allNotification(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

AppBar myTabBar(
  BuildContext context, {
  required String title,
  Widget rightIcon = const SizedBox.shrink(),
  Widget leftIcon = const SizedBox.shrink(),
}) =>
    AppBar(
      bottom: TabBar(
          labelColor: myPinkAccent,
          labelStyle: bodyMedium(context)
              ?.copyWith(color: myPinkAccent, fontWeight: FontWeight.bold),
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Mentioned'),
          ]),
      backgroundColor: Colors.transparent,
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          title,
          style: TextStyle(fontSize: 24.sp),
        ),
      ),
      actions: [rightIcon],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: leftIcon,
      ),
    );

Widget allNotification() => ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/portrait.jpg'),
          ),
          title: Text(
            '12 day Dhaka Weather Forecast. Live Weather Warnings, hourly weather updates. Accurate Dhaka weather today, forecast for sun, rain, wind and temperature.',
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: bodySmall(context)?.copyWith(color: Colors.black),
          ),
          subtitle: Text(
            '2 hours ago',
            style: bodySmall(context)?.copyWith(fontSize: 13.sp),
          ),
          trailing: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image(
                  image: AssetImage('assets/images/image1.jpg'),
                  height: 200.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
              Icon(Icons.more_vert_rounded)
            ],
          ),
        ),
      ),
    );

//assets/images/portrait.jpg

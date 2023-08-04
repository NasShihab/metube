import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/screen/dashboard/profile/profile_view.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../search_page/search_page.dart';

AppBar homePageAppBar(BuildContext context) => AppBar(
      title: Text(
        'MeTube',
        style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        Icons.video_camera_back,
        color: myPinkAccent,
        size: 30.sp,
      ),
      actions: [
        Row(
          children: [
            Switch(
              value: true,
              onChanged: (newValue) {},
              activeColor: myPinkAccent,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchPage();
                    },
                  ),
                );
              },
              child: const Icon(CupertinoIcons.search),
            ),
            width10(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/notification_page');
              },
              child: Icon(
                Icons.notifications_active,
                size: 28.sp,
              ),
            ),
            width10(),
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'Profile',
                    backgroundColor: myPinkAccent,
                    fontSize: 40.sp,
                    gravity: ToastGravity.CENTER);
                pushNavigation(context, pushNav: const ProfileView());
              },
              child: CircleAvatar(
                backgroundColor: myPinkAccent,
                radius: 14.r,
                backgroundImage: const AssetImage('assets/images/profile2.png'),
              ),
            ),
            width10(),
          ],
        ),
      ],
    );

class HorizontalCategoryWidget extends StatefulWidget {
  const HorizontalCategoryWidget({
    super.key,
    required this.list,
  });

  final List<HorizontalCategoryModel> list;

  @override
  State<HorizontalCategoryWidget> createState() =>
      _HorizontalCategoryWidgetState();
}

int selectedIndex = 0;

class _HorizontalCategoryWidgetState extends State<HorizontalCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 10.w,
        children: List.generate(
          widget.list.length,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
                // print(index.toString());
              });
              widget.list[index].function!(context);
            },
            child: Chip(
              label: Text(
                widget.list[index].title ?? '',
                style: selectedIndex == index
                    ? bodySmall(context)
                        ?.copyWith(color: Colors.white, fontSize: 14.sp)
                    : bodySmall(context)
                        ?.copyWith(color: myPinkAccent, fontSize: 14.sp),
              ),
              backgroundColor:
                  selectedIndex == index ? myPinkAccent : Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: myPinkAccent, width: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HorizontalCategoryModel {
  String? title;
  void Function(BuildContext)? function;

  HorizontalCategoryModel({
    this.title,
    this.function,
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar(
  BuildContext context, {
  required String appBarTitle,
  bool appBarCenter = false,
  Widget actionBarIcons = const SizedBox.shrink(),
  dynamic leadIcon = Icons.arrow_back,
}) =>
    AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 22.sp, color: Colors.black),
      ),
      centerTitle: appBarCenter,
      actions: [actionBarIcons],
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            leadIcon,
            size: 30.sp,
            color: Colors.black,
          )),
    );

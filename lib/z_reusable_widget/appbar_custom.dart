import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar(
    BuildContext context, {
      required String appBarTitle,
      Widget actionBarIcons = const SizedBox.shrink(),
      dynamic leadIcon = Icons.arrow_back,
    }) =>
    AppBar(
      title: Text(
        appBarTitle,
      ),
      actions: [actionBarIcons],
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
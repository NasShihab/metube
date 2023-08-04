import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar(
    BuildContext context, {
      required String appBarTitle,
      Widget actionBarIcons = const SizedBox.shrink(),
      dynamic leadIcon = Icons.arrow_back,
      double iconSize = 30,
      double titleSize = 20,
    }) =>
    AppBar(
      title: Text(
        appBarTitle, style: TextStyle(fontSize: titleSize.sp,),
      ),
      actions: [actionBarIcons],
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            leadIcon,
            size: iconSize.sp,
          )),
    );
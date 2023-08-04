import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

class ListeningPage extends StatelessWidget {
  const ListeningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(context,
          appBarTitle: 'Listening....', leadIcon: Icons.close),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Say Something to Search ..',
            style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
          ),
          height20(),
          CircleAvatar(
            radius: 80.r,
            backgroundColor: myGrey,
            child: Icon(
              Icons.mic,
              size: 80.sp,
            ),
          ),
          height20(),
        ],
      ),
    );
  }
}

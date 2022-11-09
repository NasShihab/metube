import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      currentIndex: 2,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_outlined, color: myPinkAccent, size: 30.sp),
        ),
        BottomNavigationBarItem(
          label: 'Shorts',
          icon: Icon(Icons.calendar_month_outlined,
              color: myPinkAccent, size: 30.sp),
        ),
        BottomNavigationBarItem(
          label: 'Post',
          icon: Icon(Icons.add_circle, color: myPinkAccent, size: 30.sp),
        ),
        BottomNavigationBarItem(
          label: 'Subscription',
          icon: Icon(Icons.subscriptions_outlined, color: myPinkAccent, size: 30.sp),
        ),
        BottomNavigationBarItem(
          label: 'History',
          icon: Icon(
            Icons.history_edu,
            color: myPinkAccent,
            size: 30.sp,
          ),
        ),
      ],
    );
  }
}

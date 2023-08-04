import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../z_reusable_widget/appbar_custom.dart';
import '../../z_reusable_widget/height_weight.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: 'Forget Password'),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Image.asset('assets/images/forget_password.png'),
            ),
            Flexible(
              child: Text(
                'Select which contact details should we use to reset your password',
                textAlign: TextAlign.center,
                style: bodyLarge(context),
              ),
            ),
            myPointBar(
              context,
              icon: Icons.message,
              text1: 'via SMS',
              text2: '017xxx6986',
            ),
            myPointBar(context,
                icon: Icons.mail,
                text1: 'via Mail',
                text2: 'nas.sh***2@gmail.com'),
            height20(),
          ],
        ),
      )),
      floatingActionButton: customButton(
        title: 'Continue',
        onPressed: () {
          Navigator.pushNamed(context, '/enter_otp_code');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget myPointBar(
  BuildContext context, {
  required var icon,
  String text1 = 'Text 1',
  String text2 = 'Text 2',
}) =>
    Row(
      children: [
        CircleAvatar(
          radius: 35.r,
          backgroundColor: myGrey,
          child: Icon(
            icon,
            size: 30.sp,
            color: myPinkAccent,
          ),
        ),
        SizedBox(width: 10.w),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style:
                    bodyMedium(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.w),
              Text(
                text2,
                style: bodyMedium(context),
              ),
            ],
          ),
        ),
      ],
    );

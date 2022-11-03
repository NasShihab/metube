import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/text_custom.dart';

import '../z_reusable_widget/appbar_custom.dart';
import '../z_reusable_widget/custom_buttons.dart';
import '../z_reusable_widget/custom_colors.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Set Your Fingerprint'),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add a Fingerprint to make your account more secure',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp),
              ),
              CircleAvatar(
                radius: 120.r,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/images/fingerprint.png'),
              ),
              Text(
                'Please put your finger on the fingerprint scanner to get started',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: customButton(
              backgroundColor: myGrey,
              foregroundColor: myPinkAccent,
              borderColor: myGrey,
              title: 'Skip',
              onPressed: () {},
            ),
          ),
          Expanded(
            child: customButton(
              title: 'Continue',
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.r),
                            ),
                          ),
                          content: SizedBox(
                            height: 500.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: CircleAvatar(
                                    radius: 120.r,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: const AssetImage('assets/images/profile2.png'),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Congratulations',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: myPinkAccent),
                                  ),
                                ),
                                Flexible(
                                  child: myTextGrey(
                                    fontColor: Colors.black,
                                    text: 'Your account is ready to use. You will be redirected to HomePage',
                                  ),
                                ),
                                Flexible(
                                  child: CircleAvatar(
                                      radius: 40.r,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: const AssetImage('assets/images/loading.png')),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

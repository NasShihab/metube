
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';

import '../z_reusable_widget/height_weight.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30.sp,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                // Welcome Picture
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        width: MediaQuery.of(context).size.width * .75,
                        image: const AssetImage('assets/images/welcome.png')),
                  ],
                ),
                // Let's You In
                height10(),
                Text(
                  'Let\'s you in ',
                  style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                ),
                height30(),
                myTextButton(
                  icoo: 'assets/images/facebook.png',
                  labell: 'Continue with Facebook',
                ),
                height15(),
                myTextButton(
                  icoo: 'assets/images/google.png',
                  labell: 'Continue with Google',
                ),
                height15(),
                myTextButton(
                  icoo: 'assets/images/apple.png',
                  labell: 'Continue with Apple',
                ),
                height20(),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                height20(),
                customButton(
                    title: 'Sign in with password',
                    outsidePaddingHorizontal: 0,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    }),
                height5(),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                      ),
                      Flexible(
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign_up');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                              ))),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
              ],
            ),
          )),
    );
  }
}

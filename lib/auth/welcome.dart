import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../z_reusable_widget/height_weight.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
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
                  style:
                      displayLarge(context),
                ),
                height30(),
                myTextButton(
                  icon: 'assets/images/facebook.png',
                  label: 'Continue with Facebook',
                ),
                height15(),
                myTextButton(
                  icon: 'assets/images/google.png',
                  label: 'Continue with Google',
                ),
                height15(),
                myTextButton(
                  icon: 'assets/images/apple.png',
                  label: 'Continue with Apple',
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
                          style: bodyMedium(context),
                        ),
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sign_up');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                height15(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

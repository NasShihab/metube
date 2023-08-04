import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

import '../z_reusable_widget/text_material/text_theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                // Welcome Picture
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: MediaQuery.of(context).size.width * .75,
                      image: const AssetImage('assets/images/welcome.png'),
                    ),
                  ],
                ),
                height10(),
                Text(
                  'Create New Account',
                  style: displaySmall(context),
                ),
                SizedBox(height: 30.h),
                myTextField(
                  icon: const Icon(Icons.email),
                  hintText: "Email",
                  suffixIcon: const Icon(null),
                ),
                SizedBox(height: 10.h),
                myPasswordField(
                  icon: const Icon(Icons.lock),
                  hintText: "Password",
                  suffixIcon: const Icon(Icons.visibility_off),
                ),

                CheckboxListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 90.w),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  value: false,
                  onChanged: (bool? value) {},
                  title: Text(
                    'Remember Me',
                    style: bodyMedium(context),
                  ),
                ),
                SizedBox(height: 10.h),
                customButton(
                    title: 'Sign up',
                    outsidePaddingHorizontal: 0,
                    onPressed: () {
                      Navigator.pushNamed(context, '/fill_profile');
                    }),
                SizedBox(height: 20.h),
                Text(
                  'Or Continue with',
                  style: bodyMedium(context),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: Card(
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: Card(
                          child: Image.asset('assets/images/google.png'),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: Card(
                          child: Image.asset('assets/images/apple.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: bodyMedium(context),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Login',
                          style: bodyLarge(context)?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

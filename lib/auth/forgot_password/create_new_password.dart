import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../z_reusable_widget/buttons_custom.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Create New Password'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0.h),
          child: Column(
            children: [
              SizedBox(
                height: 250.h,
                child: CircleAvatar(
                  radius: 150.r,
                  backgroundImage:
                      const AssetImage('assets/images/forget_password.png'),
                ),
              ),
              height30(),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Create your new password',
                      style: displaySmall(context),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  myPasswordField(
                      icon: const Icon(Icons.lock),
                      hintText: "Enter New Password",
                      suffixIcon: const Icon(Icons.visibility_off)),
                  SizedBox(height: 10.h),
                  myPasswordField(
                      icon: const Icon(Icons.lock),
                      hintText: "Repeat Your Password",
                      suffixIcon: const Icon(Icons.visibility_off)),
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
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
        title: 'Continue',
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.r))),
                    content: SizedBox(
                      height: 500.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: CircleAvatar(
                              radius: 120.r,
                              backgroundColor: Colors.transparent,
                              backgroundImage: const AssetImage(
                                  'assets/images/profile2.png'),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Congratulations',
                              style: titleMedium(context)?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: myPinkAccent),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Your account is ready to use. You will be redirected to HomePage',
                              style: bodyMedium(context),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            child: CircleAvatar(
                                radius: 40.r,
                                backgroundColor: Colors.transparent,
                                backgroundImage: const AssetImage(
                                    'assets/images/loading.png')),
                          ),
                          customButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/dashboard');
                              },
                              title: 'Ok'),
                        ],
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}

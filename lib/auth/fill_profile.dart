import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../z_reusable_widget/appbar_custom.dart';
import '../z_reusable_widget/buttons_custom.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(
        context,
        appBarTitle: 'Fill Your Profile',
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .80,
          child: Column(
            children: [
              height20(),
              // Welcome Picture
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 100.r,
                        backgroundImage: const AssetImage('assets/images/google.png'),
                      ),
                      Positioned(
                          bottom: 5.h,
                          right: -25.h,
                          child: RawMaterialButton(
                            onPressed: () {},
                            shape: const CircleBorder(),
                            fillColor: myPinkAccent,
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              height30(),
              Expanded(
                child: myTextField(icon: const Icon(Icons.email), hintText: "Full Name", suffixIcon: const Icon(null)),
              ),
              Expanded(
                child: myTextField(icon: const Icon(Icons.email), hintText: "Nickname", suffixIcon: const Icon(null)),
              ),
              Expanded(
                child: myTextField(icon: const Icon(Icons.email), hintText: "Date of birth", suffixIcon: const Icon(Icons.calendar_month)),
              ),
              Expanded(
                child: myTextField(icon: const Icon(Icons.email), hintText: "Email", suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined)),
              ),
              Expanded(
                child: myTextField(icon: const Icon(Icons.email), hintText: "Gander", suffixIcon: const Icon(Icons.arrow_drop_down)),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: Row(
        children: [
          Expanded(child: customButton( title: 'Skip', onPressed: () {})),
          Expanded(
              child: customButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_pin');
                  })),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

// My Shortcut
// My Shortcut
}

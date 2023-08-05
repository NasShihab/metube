import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/profile/premium_subscription/poyment/payments_page.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';

import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';

class PremiumSubscriptionView extends StatelessWidget {
  const PremiumSubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Text(
                  'Subscribe To Premium',
                  textAlign: TextAlign.center,
                  style: titleLarge(context)?.copyWith(
                    color: myPinkAccent,
                    fontSize: 30.sp,
                  ),
                ),
              ),
              height20(),
              Center(
                child: Text(
                  'Enjoy Full HD Videos without restrictions and ads',
                  style: bodyMedium(context),
                  textAlign: TextAlign.center,
                ),
              ),
              height20(),
              InkWell(
                onTap: () {
                  pushNavigation(context, pushNav: const PaymentsPage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: myPinkAccent, width: 3.w),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 15.w),
                      child: Column(
                        children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.crown,
                              size: 50.sp,
                              color: myPinkAccent,
                            ),
                          ),
                          Text(
                            '\$9.99 / month',
                            style: titleLarge(context)?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 30.sp),
                          ),
                          height30(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              height20(),
              InkWell(
                onTap: () {
                  pushNavigation(context, pushNav: const PaymentsPage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: myPinkAccent, width: 3.w),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 15.w),
                      child: Column(
                        children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.crown,
                              size: 50.sp,
                              color: myPinkAccent,
                            ),
                          ),
                          Text(
                            '\$9.99 / month',
                            style: titleLarge(context)?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 30.sp),
                          ),
                          height30(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              height20(),
              InkWell(
                onTap: () {
                  pushNavigation(context, pushNav: const PaymentsPage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: myPinkAccent, width: 3.w),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 15.w),
                      child: Column(
                        children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.crown,
                              size: 50.sp,
                              color: myPinkAccent,
                            ),
                          ),
                          Text(
                            '\$9.99 / month',
                            style: titleLarge(context)?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 30.sp),
                          ),
                          height30(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                          height10(),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.checkmark),
                              width10(),
                              Text(
                                'Watch All you want Ad-free',
                                style: bodySmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

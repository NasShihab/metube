import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class ReviewPaymentSummary extends StatelessWidget {
  const ReviewPaymentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review Summary',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: myPinkAccent),
                    borderRadius: BorderRadius.circular(15.r)),
                child: IntrinsicHeight(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
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
              height30(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r)),
                child: IntrinsicHeight(
                    child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.black),
                          ),
                          Text(
                            '\$9.99',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      height10(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.black),
                          ),
                          Text(
                            '\$1.99',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black.withOpacity(.3),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/master_card.png'),
                        title: Text(
                          '···· ···· ···· 4789',
                          style:
                              bodyLarge(context)?.copyWith(color: Colors.black),
                        ),
                        trailing: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: bodyMedium(context)
                                ?.copyWith(color: myPinkAccent),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
        title: 'Confirm Payment',
        onPressed: () {

        },
      ),
    );
  }
}

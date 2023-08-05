import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/profile/payment/review_summary/review_payment_summary.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../../../../z_reusable_widget/height_weight.dart';
import '../../../../../../z_reusable_widget/push_navigation.dart';
import '../add_new_card_view.dart';

class PaymentUpdateCard extends StatelessWidget {
  const PaymentUpdateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: paymentNextButton(context, tdButtonName: 'Next', tdPageName: '/Review_Summary'),
      floatingActionButton: customButton(
        title: 'Next',
        onPressed: () {
          pushNavigation(context, pushNav: const ReviewPaymentSummary());
        },
      ),
      appBar: AppBar(
        title: Text(
          'Payments (Card Added)',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            height10(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select the payment method you want to use',
                style: bodyMedium(context),
              ),
            ),
            height20(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: updatePaymentMethodList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      visualDensity:
                          VisualDensity(horizontal: 4, vertical: -1.h),
                      leading: Image.asset(
                          height: 40,
                          width: 40,
                          '${updatePaymentMethodList[index].logo}'),
                      title: Text(
                        '${updatePaymentMethodList[index].title}',
                        style: bodyLarge(context),
                      ),
                      trailing: Radio(
                        value: 4,
                        groupValue: 4,
                        onChanged: (index) {},
                      ),
                    ),
                    height30(),
                  ],
                );
              },
            ),
            customButton(
              foregroundColor: myPinkAccent,
              backgroundColor: myGrey,
              title: 'Add New Card',
              onPressed: () {
                pushNavigation(context, pushNav: const AddNewCard());
              },
            )
          ],
        ),
      ),
    );
  }
}

List updatePaymentMethodList = [
  UpdatePaymentMethodClass(
    'assets/images/paypal.png',
    'Paypal',
  ),
  UpdatePaymentMethodClass(
    'assets/images/google.png',
    'Google Pay',
  ),
  UpdatePaymentMethodClass(
    'assets/images/apple.png',
    'Apple Pay',
  ),
  UpdatePaymentMethodClass(
    'assets/images/master_card.png',
    '···· ···· ···· 4789',
  ),
];

class UpdatePaymentMethodClass {
  final String logo;
  final String title;

  UpdatePaymentMethodClass(
    this.logo,
    this.title,
  );
}

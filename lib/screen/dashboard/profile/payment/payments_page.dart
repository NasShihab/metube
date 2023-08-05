import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/profile/payment/add_new_card/add_new_card_view.dart';
import 'package:metube/screen/dashboard/profile/payment/review_summary/review_payment_summary.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../../model/payment_page_model.dart';
import '../../../../z_reusable_widget/height_weight.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payments',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Icon(
              Icons.qr_code_scanner,
              color: primeColor(context),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10(),
              Text(
                'Select the payment method you want to use',
                style: bodyMedium(context),
              ),
              height20(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: paymentMethodList.length,
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
                            '${paymentMethodList[index].paymentLogo}'),
                        title: Text(
                          '${paymentMethodList[index].paymentName}',
                          style: bodyLarge(context),
                        ),
                        trailing: Radio(
                          value: 1,
                          groupValue: 1,
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
        title: 'Next',
        onPressed: () {
         pushNavigation(context, pushNav: const ReviewPaymentSummary());
        },
      ),
    );
  }
}

List paymentMethodList = [
  PaymentPageModel(
    'assets/images/paypal.png',
    'Paypal',
  ),
  PaymentPageModel(
    'assets/images/google.png',
    'Google Pay',
  ),
  PaymentPageModel(
    'assets/images/apple.png',
    'Apple Pay',
  ),
];

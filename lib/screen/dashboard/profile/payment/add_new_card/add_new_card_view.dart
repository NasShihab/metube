import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/profile/payment/add_new_card/payment_update/payment_update_card.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../../../z_reusable_widget/height_weight.dart';
import 'add_new_card_widget.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Add a new card',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10(),
            const Image(
              width: double.infinity,
              image: AssetImage('assets/images/visa_card.png'),
            ),
            Text(
              'Card Name',
              style: bodyMedium(context),
            ),
            height20(),
            addCardTextField(context, hintText: 'Antony Gomez'),
            height20(),
            Text(
              'Card Number',
              style: bodyMedium(context),
            ),
            height20(),
            addCardTextField(context, hintText: '4587 1549 3650 4005'),
            height20(),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: bodyMedium(context),
                      ),
                      height20(),
                      expiryTextField(exHintText: '26/06/22'),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: bodyMedium(context),
                      ),
                      height20(),
                      addCardTextField(context, hintText: '910'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: pdNextButton(context, tdButtonName: 'Next', tdPageName: '/Payment_UpdateCard'),
      floatingActionButton: customButton(
        title: 'Next',
        onPressed: () {
          pushNavigation(context, pushNav: const PaymentUpdateCard());
        },
      ),
    );
  }
}

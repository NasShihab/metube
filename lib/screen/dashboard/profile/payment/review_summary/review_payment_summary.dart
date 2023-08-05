import 'package:flutter/material.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
        title: 'Next',
        onPressed: () {},
      ),
    );
  }
}

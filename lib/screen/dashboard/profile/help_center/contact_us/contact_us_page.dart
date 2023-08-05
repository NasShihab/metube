import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: ListView(
        children: [
          height20(),
          contactButton(
            context,
            title: 'Customer Service',
            icon: Icons.headphones_sharp,
          ),
          contactButton(
            context,
            title: 'WhatsApp',
            icon: FontAwesomeIcons.squareWhatsapp,
          ),
          contactButton(
            context,
            title: 'Website',
            icon: FontAwesomeIcons.bloggerB,
          ),
          contactButton(
            context,
            title: 'Facebook',
            icon: FontAwesomeIcons.squareFacebook,
          ),
          contactButton(
            context,
            title: 'Twitter',
            icon: FontAwesomeIcons.squareTwitter,
          ),
          contactButton(
            context,
            title: 'Instagram',
            icon: FontAwesomeIcons.squareInstagram,
          ),
        ],
      ),
    );
  }
}

Widget contactButton(BuildContext context,
    {required String title, required dynamic icon}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.h),
    child: InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            color: primeColorDark(context),
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Row(
              children: [
                Icon(icon),
                width10(),
                Text(
                  title,
                  style:
                      bodyLarge(context)?.copyWith(color: primeColor(context)),
                ),
              ],
            ),
          )),
    ),
  );
}

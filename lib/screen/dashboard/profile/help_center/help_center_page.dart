import 'package:flutter/material.dart';
import 'package:metube/screen/dashboard/profile/help_center/contact_us/contact_us_page.dart';
import 'package:metube/screen/dashboard/profile/help_center/faq/faq_page.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Help & Center'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'FAQ'),
              Tab(text: 'Contact Us'),
            ],
            labelStyle: bodyLarge(context),
            unselectedLabelColor: primeColor(context),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              FAQPage(),
              const ContactUsPage(),
            ],
          ),
        ),
      ),
    );
  }
}

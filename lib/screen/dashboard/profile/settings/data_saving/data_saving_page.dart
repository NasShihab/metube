import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class DataSavingPage extends StatelessWidget {
  const DataSavingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Saving',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              switchTile(
                context,
                title: 'Data Saving Mode',
                onTap: (value) {},
                value: true,
              ),
              Divider(
                thickness: 1,
                color: primeColor(context),
              ),
              switchTile(
                context,
                title: 'Reduce Video Quality',
                onTap: (value) {},
                value: false,
              ),
              switchTile(
                context,
                title: 'Reduce Download Quality',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Restricted Mobile Data',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Upload Over Wi-Fi Only',
                onTap: (value) {},
                value: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget switchTile(
    BuildContext context, {
      required String title,
      required void Function(bool) onTap,
      required bool value,
    }) {
  return SwitchListTile(
    value: value,
    onChanged: onTap,
    title: Text(
      title,
      style: bodyLarge(context),
    ),
    activeColor: myPinkAccent,
    contentPadding: EdgeInsets.zero,
  );
}

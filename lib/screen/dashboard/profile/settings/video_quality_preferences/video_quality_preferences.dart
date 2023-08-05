import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

import '../../../../../z_reusable_widget/colors_custom.dart';
import '../../../../../z_reusable_widget/text_material/text_theme.dart';

class VideoQualityPreferences extends StatelessWidget {
  const VideoQualityPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Quality Preferences',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'On Mobile Networks',
                style:
                    bodyLarge(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              height20(),
              switchTile(
                context,
                title: 'Auto (Recommended)',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Higher Picture Quality',
                onTap: (value) {},
                value: false,
              ),
              switchTile(
                context,
                title: 'Data Saver',
                onTap: (value) {},
                value: true,
              ),
              Divider(
                thickness: 1,
                color: primeColor(context),
              ),
              height20(),
              Text(
                'On Wi-Fi',
                style:
                bodyLarge(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              height20(),
              switchTile(
                context,
                title: 'Auto (Recommended)',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Higher Picture Quality',
                onTap: (value) {},
                value: false,
              ),
              switchTile(
                context,
                title: 'Data Saver',
                onTap: (value) {},
                value: true,
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

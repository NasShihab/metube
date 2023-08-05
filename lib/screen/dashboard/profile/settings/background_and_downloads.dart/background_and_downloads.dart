import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../z_reusable_widget/colors_custom.dart';
import '../../../../../z_reusable_widget/height_weight.dart';
import '../../../../../z_reusable_widget/text_material/text_theme.dart';

class BackgroundAndDownloads extends StatelessWidget {
  const BackgroundAndDownloads({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Background And Downloads',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height20(),
              Text(
                'Background Play',
                style:
                bodyLarge(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              height20(),
              arrowTile(
                context,
                onTap: () {},
                text: 'Playback',
              ),
              height30(),
              Text(
                'Downloads',
                style:
                bodyLarge(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              height20(),
              switchTile(
                context,
                title: 'Smart Downloads',
                onTap: (value) {},
                value: true,
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Download Quality',
              ),
              switchTile(
                context,
                title: 'Download Over Wi-Fi Only',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Recommended Downloads',
                onTap: (value) {},
                value: true,
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Delete All Downloads',
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


Widget arrowTile(
    BuildContext context, {
      required void Function() onTap,
      required String text,
    }) {
  return InkWell(
    onTap: onTap,
    child: ListTile(
      title: Text(
        text,
        style: bodyLarge(context),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Icon(Icons.arrow_forward_ios_sharp,
          size: 20.sp, color: Theme.of(context).primaryColor),
      contentPadding: EdgeInsets.zero,
    ),
  );
}

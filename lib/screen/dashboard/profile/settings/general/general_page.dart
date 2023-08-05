import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'General',
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
                title: 'Remind Me to Take a Break',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Remind Me When it\'s Bedtime',
                onTap: (value) {},
                value: false,
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Playback in Feeds',
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Double-tap to Seek',
              ),
              switchTile(
                context,
                title: 'Zoom to Fill Screen',
                onTap: (value) {},
                value: false,
              ),
              switchTile(
                context,
                title: 'Picture-in-Picture',
                onTap: (value) {},
                value: true,
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Uploads',
              ),
              arrowTile(
                context,
                onTap: () {},
                text: 'Language',
              ),
              switchTile(
                context,
                title: 'Restricted Mode',
                onTap: (value) {},
                value: true,
              ),
              switchTile(
                context,
                title: 'Enable Stats for Nerds',
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

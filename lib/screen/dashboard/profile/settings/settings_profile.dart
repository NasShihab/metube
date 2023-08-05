import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/profile/settings/settings_item_list/settings_list.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: primeColor(context),
          ),
          width10(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            shrinkWrap: true,
            children: List.generate(settingsList(context).length, (index) {
              return InkWell(
                onTap: settingsList(context)[index].onTap,
                child: ListTile(
                  leading: Icon(
                    settingsList(context)[index].icon,
                    size: 25.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    settingsList(context)[index].title,
                    style: bodyMedium(context),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp,
                      size: 20.sp, color: Theme.of(context).primaryColor),
                  contentPadding: EdgeInsets.zero,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

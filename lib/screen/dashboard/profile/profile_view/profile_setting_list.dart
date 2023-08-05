import 'package:flutter/material.dart';
import 'package:metube/screen/dashboard/profile/help_center/help_center_page.dart';
import 'package:metube/screen/dashboard/profile/settings/settings_profile.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';

import '../../../../model/settings_panel_item_model.dart';

List<SettingsItem> profileSettingsList(BuildContext context) {
  return [
    SettingsItem(
      title: 'Your Channel',
      icon: Icons.person,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Turn on Incognito',
      icon: Icons.security,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Your Account',
      icon: Icons.account_circle,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Time Watched',
      icon: Icons.access_time,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Dark Mode',
      icon: Icons.dark_mode,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Security',
      icon: Icons.security_rounded,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Settings',
      icon: Icons.settings,
      onTap: () {
        pushNavigation(context, pushNav: const ProfileSettings());
      },
    ),
    SettingsItem(
      title: 'Help Center',
      icon: Icons.help,
      onTap: () {
        pushNavigation(context, pushNav: const HelpCenterPage());
      },
    ),
  ];
}

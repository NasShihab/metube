import 'package:flutter/material.dart';
import 'package:metube/screen/dashboard/profile/settings/background_and_downloads.dart/background_and_downloads.dart';
import 'package:metube/screen/dashboard/profile/settings/data_saving/data_saving_page.dart';
import 'package:metube/screen/dashboard/profile/settings/general/general_page.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import '../../../../../model/settings_panel_item_model.dart';
import '../video_quality_preferences/video_quality_preferences.dart';

List<SettingsItem> settingsList(BuildContext context) {
  return [
    SettingsItem(
      title: 'General',
      icon: Icons.settings_applications,
      onTap: () {
        pushNavigation(context, pushNav: const GeneralPage());
      },
    ),
    SettingsItem(
      title: 'Data Saving',
      icon: Icons.data_usage,
      onTap: () {
        pushNavigation(context, pushNav: const DataSavingPage());
      },
    ),
    SettingsItem(
      title: 'Autoplay Next Video',
      icon: Icons.autorenew,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Video Quality Preferences',
      icon: Icons.video_library,
      onTap: () {
        pushNavigation(context, pushNav: const VideoQualityPreferences());
      },
    ),
    SettingsItem(
      title: 'Background and Downloads',
      icon: Icons.file_download,
      onTap: () {
        pushNavigation(context, pushNav: const BackgroundAndDownloads());
      },
    ),
    SettingsItem(
      title: 'Watch on TV',
      icon: Icons.tv,
      onTap: () {},
    ),
    SettingsItem(
      title: 'History',
      icon: Icons.history,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Privacy Policy',
      icon: Icons.privacy_tip,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Billing & Payments',
      icon: Icons.payment,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Notifications',
      icon: Icons.notifications,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Community Guidelines',
      icon: Icons.group,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Live Chat',
      icon: Icons.chat,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Captions',
      icon: Icons.closed_caption,
      onTap: () {},
    ),
    SettingsItem(
      title: 'Accessibility',
      icon: Icons.accessibility,
      onTap: () {},
    ),
    SettingsItem(
      title: 'About',
      icon: Icons.info,
      onTap: () {},
    ),
  ];
}

class SettingsItem {
  String title;
  dynamic icon;
  void Function() onTap;

  SettingsItem({required this.title, required this.icon, required this.onTap});
}

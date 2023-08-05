import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/profile/premium_subscription/premium_subscription_view.dart';
import 'package:metube/screen/dashboard/profile/profile_setting_list.dart';
import 'package:metube/z_reusable_widget/push_navigation.dart';
import '../../../z_reusable_widget/colors_custom.dart';
import '../../../z_reusable_widget/height_weight.dart';
import '../../../z_reusable_widget/text_material/text_theme.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/images/portrait1.jpg'),
                        radius: 70.r,
                      ),
                      Positioned(
                        bottom: 5,
                        right: 2,
                        child: Container(
                          height: 25.h,
                          width: 25.h,
                          decoration: BoxDecoration(color: myPinkAccent),
                          child: Icon(
                            Icons.edit_rounded,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                height15(),
                Text(
                  'Andrew Ansley',
                  style: titleMedium(context),
                ),
                height15(),
                Text(
                  'Andrew@mail.com',
                  style: bodySmall(context),
                ),
                height15(),
                InkWell(
                  onTap: () {
                    pushNavigation(context,
                        pushNav: const PremiumSubscriptionView());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: myPinkAccent,width: 3.w),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.crown,
                            size: 50.sp,
                            color: myPinkAccent,
                          ),
                          title: Text(
                            'Join Premium',
                            style: titleLarge(context)?.copyWith(
                                fontSize: 30.sp, color: myPinkAccent),
                          ),
                          subtitle: Text(
                            'Enjoy watching Full-HD videos, without restrictions and without ads',
                            style: bodySmall(context),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(CupertinoIcons.right_chevron),
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 30.w,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: List.generate(profileSettingsList(context).length,
                      (index) {
                    return InkWell(
                      onTap: profileSettingsList(context)[index].onTap,
                      child: ListTile(
                        leading: Icon(
                          profileSettingsList(context)[index].icon,
                          size: 25.sp,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          profileSettingsList(context)[index].title,
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
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      size: 25.sp,
                      color: myPinkAccent,
                    ),
                    title: Text(
                      'LogOut',
                      style: bodyMedium(context)?.copyWith(color: myPinkAccent),
                      overflow: TextOverflow.ellipsis,
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

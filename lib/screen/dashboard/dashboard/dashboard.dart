import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/dashboard/shorts/page_view_builder.dart';
import 'package:metube/screen/dashboard/subscription/subscription_view.dart';
import 'package:metube/screen/dashboard/upload/create_video_shorts_bottom_sheet.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'dashboard_provider.dart';
import '../homepage/home_page_view/home_page.dart';

final dashboardItemProvider = StateNotifierProvider<DashboardProvider, int>(
  (ref) => DashboardProvider(),
);

class Dashboard extends ConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> screens = [
      //1
      HomePage(),
      //2
      const ShortsPageView(),
      //3 Upload
      Scaffold(
        body: Center(
          child: customButton(
            title: 'Upload',
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const UploadBottomSheet();
                },
              );
            },
          ),
        ),
      ),
      //4
      SubscriptionView(),
      //5
      Scaffold(
        body: Center(child: Text('Library', style: TextStyle(fontSize: 50.sp))),
      ),
    ];

    final index = ref.watch(dashboardItemProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return IconThemeData(color: myPinkAccent, size: 30.sp);
              }
              return IconThemeData(size: 30.sp, color: Colors.grey);
            },
          ),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 13.sp, overflow: TextOverflow.ellipsis),
          ),
        ),
        child: NavigationBar(
          // backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) {
            ref.read(dashboardItemProvider.notifier).selected(index);
          },
          destinations: [
            const NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(
                Icons.home,
              ),
            ),
            const NavigationDestination(
              icon: Icon(Icons.video_camera_back_outlined),
              label: 'Shorts',
              selectedIcon: Icon(
                Icons.video_camera_back,
              ),
            ),
            NavigationDestination(
              icon: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30.r),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return const UploadBottomSheet();
                      });
                },
                child: CircleAvatar(
                  backgroundColor: myPinkAccent,
                  child: const Icon(Icons.add),
                ),
              ),
              label: 'Upload',
              selectedIcon: const Icon(
                Icons.add_circle,
              ),
            ),
            const NavigationDestination(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Subscription',
              selectedIcon: Icon(
                Icons.subscriptions,
              ),
            ),
            const NavigationDestination(
              icon: Icon(Icons.library_books_outlined),
              label: 'Library',
              selectedIcon: Icon(
                Icons.library_books,
              ),
            ),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}

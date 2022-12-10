import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'dashboard_provider.dart';
import '../homepage/home_page.dart';

final dashboardItemProvider = StateNotifierProvider<DashboardProvider, int>(
  (ref) => DashboardProvider(),
);

class Dashboard extends ConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> screens = [
      const HomePage(),
      const HomePage(),
      const HomePage(),
      const HomePage(),
      const HomePage(),
    ];

    final index = ref.watch(dashboardItemProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorShape: Border.all(color: Colors.transparent),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ),
        child: NavigationBar(
          backgroundColor: myGrey,
          selectedIndex: index,
          onDestinationSelected: (index) {
            ref.read(dashboardItemProvider.notifier).selected(index);
          },
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(
                Icons.home,
                color: myPinkAccent,
              ),
            ),
            NavigationDestination(
              icon: const Icon(Icons.video_camera_back_outlined),
              label: 'Shorts',
              selectedIcon: Icon(
                Icons.video_camera_back,
                color: myPinkAccent,
              ),
            ),
            NavigationDestination(
              icon: const Icon(Icons.add),
              label: 'Upload',
              selectedIcon: Icon(
                Icons.add_circle,
                color: myPinkAccent,
              ),
            ),
            NavigationDestination(
              icon: const Icon(Icons.subscriptions_outlined),
              label: 'Subscription',
              selectedIcon: Icon(
                Icons.subscriptions,
                color: myPinkAccent,
              ),
            ),
            NavigationDestination(
              icon: const Icon(Icons.library_books_outlined),
              label: 'Library',
              selectedIcon: Icon(
                Icons.library_books,
                color: myPinkAccent,
              ),
            ),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}

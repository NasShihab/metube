import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'onboard_page_provider.dart';

final onBoardingNotifier = StateNotifierProvider<OnBoardProvider, int>(
  (ref) => OnBoardProvider(),
);

class Onboard_Page extends ConsumerWidget {
  Onboard_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedItem = ref.watch(onBoardingNotifier);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image(
                  height: 400.h,
                  image: AssetImage(onBoardingInfo[selectedItem].image),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Text(
                    onBoardingInfo[selectedItem].text,
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 100,
              left: MediaQuery.of(context).size.width * .45.w,
              child: Wrap(
                spacing: 5.w,
                children: List.generate(
                  onBoardingInfo.length,
                  (index) => GestureDetector(
                    onTap: () {
                      ref.read(onBoardingNotifier.notifier).onChangeItem(index);
                    },
                    child: Container(
                      height: 10.h,
                      width: selectedItem == index ? 40.w : 15.w,
                      decoration: BoxDecoration(
                          color: selectedItem == index ? myPinkAccent : myPinkAccent,
                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25.r)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
          title: onBoardingInfo[selectedItem].text2,
          onPressed: () {
            // Navigator.pushNamed(context, '/third_screen');
            if (selectedItem != onBoardingInfo.length - 1) {
              ref.read(onBoardingNotifier.notifier).onNextItem(selectedItem);
            } else {
              Navigator.pushNamed(context, '/welcome');
            }
          }),
    );
  }
}

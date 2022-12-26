import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'onboard_page_model.dart';

class OnBoardProvider extends StateNotifier<int>{
  OnBoardProvider() : super(0);

  void onChangeItem(index){
    state = index;
  }
  void onNextItem(index){
    state++;
  }
}

List<OnboardItems> onBoardingInfo = [
  OnboardItems(
    'assets/images/second_screen.png',
    'Watch interesting video from around the world',
    'Next'
  ),
  OnboardItems(
    'assets/images/third_screen.png',
    'Watch interesting video easily from your smartphone',
    'Next'
  ),
  OnboardItems(
    'assets/images/fourth_screen.png',
    'Let\s explore video the world with MeTube now',
    'Get Started'
  ),
];

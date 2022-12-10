import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadioButtonProvider extends StateNotifier<int> {
  RadioButtonProvider() : super(0);
  void selected(int index) {
    state = index;
  }
}

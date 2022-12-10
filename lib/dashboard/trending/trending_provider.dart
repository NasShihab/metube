import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrendingProvider extends StateNotifier<int> {
  TrendingProvider() : super(0);

  void selected(int index) {
    state = index;
  }
}

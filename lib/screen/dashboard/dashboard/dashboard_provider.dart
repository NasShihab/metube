import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardProvider extends StateNotifier<int> {
  DashboardProvider() : super(0);
  void selected(int index) {
    state = index;
  }
}

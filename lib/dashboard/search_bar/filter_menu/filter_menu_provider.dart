import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropDownProvider extends StateNotifier<String> {
  DropDownProvider(super.state);

  void update(value) {
    state = value;
  }
}

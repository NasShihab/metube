import 'package:flutter_riverpod/flutter_riverpod.dart';

class SortByProvider extends StateNotifier<String> {
  SortByProvider() : super('Relevance');

  void update(value) {
    state = value;
  }
}

class TypeProvider extends StateNotifier<String> {
  TypeProvider() : super('All');

  void update(value) {
    state = value;
  }
}

class DateProvider extends StateNotifier<String> {
  DateProvider() : super('Any Time');

  void update(value) {
    state = value;
  }
}

class DurationProvider extends StateNotifier<String> {
  DurationProvider() : super('Any');

  void update(value) {
    state = value;
  }
}

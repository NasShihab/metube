import 'package:flutter_riverpod/flutter_riverpod.dart';

class SortByProvider extends StateNotifier<String>{
  SortByProvider() : super('Relevance');

  void update(sortby){
    state = sortby;
  }
}
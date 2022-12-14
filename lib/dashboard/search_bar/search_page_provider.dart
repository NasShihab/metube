import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'list_item.dart';

class SearchPageProvider extends StateNotifier<List> {
  SearchPageProvider() : super(recentItemList);

  void updateSearch(String value) {
    state = recentItemList
        .where((element) =>
            element.title!.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }
}

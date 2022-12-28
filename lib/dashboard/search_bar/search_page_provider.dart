import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'music_list_model.dart';

class SearchPageProvider extends StateNotifier<List> {
  SearchPageProvider() : super(feedList);

  void updateSearch(String value) {
    state = feedList
        .where((element) =>
            element.title.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }
}

class SearchController extends StateNotifier<String> {
  SearchController() : super('');

  void searchController(value) {
    state = value;
  }
}

// String image;
// String length;
// String profileDP;
// String? title;
// String channelName;
// double viewsCount;
// String viewsText;
// String time;
List<FeedModel> feedList = [
  FeedModel(
    'assets/images/image1.jpg',
    '18:27',
    'assets/images/portrait1.jpg',
    'Beauty blog, How to makeup quickly',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/travel.png',
    '18:27',
    'assets/images/travel.png',
    'Travel blog',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/music.jpg',
    '18:27',
    'assets/images/music.jpg',
    'Music blog',
    'Music',
    9.5,
    'M views',
    '8 months Ago',
  ),
];

//Shorts Model
// String image;
// String title;
List<ShortsModel> shortsList = [
  ShortsModel(
    'assets/images/portrait2.jpg',
    'Beauty makeup tutorials before you go out',
  ),
  ShortsModel(
    'assets/images/portrait3.jpg',
    'Beauty makeup tutorials before you go out',
  ),
  ShortsModel(
    'assets/images/portrait2.jpg',
    'Beauty makeup tutorials before you go out',
  ),
];

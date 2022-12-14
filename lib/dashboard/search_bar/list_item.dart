import 'package:flutter/material.dart';

class MusicList {
  String? title;
  dynamic icon;

  MusicList(this.title, this.icon);
}

List<MusicList> recentItemList = [
  MusicList('Abilene', Icons.close),
  MusicList('Above And Beyond (The Call Of Love)', Icons.close),
  MusicList('Ain\'t That Lonely Yet', Icons.close),
  MusicList('Ain\'t That Lonely Yet', Icons.close),
  MusicList('Ain\'t That Lonely Yet', Icons.close),
  MusicList('Ain\'t That Lonely Yet', Icons.close),
];

List<MusicList> suggestItem = [
  MusicList('Abilene', Icons.search_sharp),
  MusicList('Above And Beyond (The Call Of Love)', Icons.search_sharp),
  MusicList('Ain\'t That Lonely Yet', Icons.search_sharp),
  MusicList('Ain\'t That Lonely Yet', Icons.search_sharp),
  MusicList('Ain\'t That Lonely Yet', Icons.search_sharp),
  MusicList('Ain\'t That Lonely Yet', Icons.search_sharp),
];

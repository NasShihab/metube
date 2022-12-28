
class FeedModel {
  String image;
  String length;
  String profileDP;
  String title;
  String channelName;
  double viewsCount;
  String viewsText;
  String time;

  FeedModel(
    this.image,
    this.length,
    this.profileDP,
    this.title,
    this.channelName,
    this.viewsCount,
    this.viewsText,
    this.time,
  );
}

class ShortsModel {
  String image;
  String title;

  ShortsModel(
    this.image,
    this.title,
  );
}

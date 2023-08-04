class FeedModel {
  String thumbnail;
  String length;
  String profilePic;
  String title;
  String channelName;
  double viewsCount;
  String viewsText;
  String months;

  FeedModel(
    this.thumbnail,
    this.length,
    this.profilePic,
    this.title,
    this.channelName,
    this.viewsCount,
    this.viewsText,
    this.months,
  );
}

List<FeedModel> feedList = [
  FeedModel(
    'assets/images/image1.jpg',
    '18:27',
    'assets/images/portrait1.jpg',
    'Hello Beauty blog',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/travel.png',
    '18:27',
    'assets/images/portrait2.jpg',
    'Travel blog',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/image1.jpg',
    '18:27',
    'assets/images/portrait3.jpg',
    'Start Beauty blog',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/music.jpg',
    '18:27',
    'assets/images/portrait4.jpg',
    'Music blog',
    'Music',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/image1.jpg',
    '18:27',
    'assets/images/portrait1.jpg',
    'Best Beauty blog',
    'Beauty Plus',
    9.5,
    'M views',
    '8 months Ago',
  ),
  FeedModel(
    'assets/images/image2.jpg',
    '18:27',
    'assets/images/portrait3.jpg',
    'Top Music blog',
    'Music',
    9.5,
    'M views',
    '8 months Ago',
  ),
];

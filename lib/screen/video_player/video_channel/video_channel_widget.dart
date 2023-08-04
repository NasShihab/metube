import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metube/screen/dashboard/homepage/home_page_view/home_page_widget.dart';
import 'package:metube/screen/dashboard/homepage/news_feed/news_feed.dart';
import 'package:metube/screen/video_player/widget/video_description.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../model/search_suggestions_model.dart';
import '../../dashboard/homepage/news_feed/more_option_widget.dart';

AppBar myTabBar(
  BuildContext context, {
  required String title,
  Widget rightIcon = const SizedBox.shrink(),
  Widget leftIcon = const SizedBox.shrink(),
}) =>
    AppBar(
      bottom: TabBar(
        labelColor: myPinkAccent,
        labelStyle: bodyLarge(context)
            ?.copyWith(color: myPinkAccent, fontWeight: FontWeight.bold),
        tabs: const [
          Tab(text: 'Home'),
          Tab(text: 'Videos'),
          Tab(text: 'Playlist'),
          Tab(text: 'About'),
        ],
      ),
      backgroundColor: Colors.transparent,
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          title,
          style: titleMedium(context)?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      actions: [rightIcon],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: leftIcon,
      ),
    );

/////////////// 1
Widget home(BuildContext context) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: ListView(
        shrinkWrap: true,
        children: [
          height20(),
          CircleAvatar(
            radius: 80.r,
            backgroundImage: const AssetImage('assets/images/portrait2.jpg'),
          ),
          height15(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'World of Music',
                style:
                    titleLarge(context)?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.verified_rounded,
                color: Colors.blue,
              )
            ],
          ),
          Chip(
            label: Text(
              'Subscribe',
              style: bodySmall(context)?.copyWith(color: Colors.white),
            ),
            backgroundColor: myPinkAccent,
          ),
          height20(),
          const NewsFeed()
        ],
      ),
    );

/////////////// 2
class VideoTab extends StatelessWidget {
  const VideoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HorizontalCategoryWidget(
          list: videoCatList(context),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: GridView.count(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 15.h,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 15.w,
            children: List.generate(shortsList.length, (index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.r),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(shortsList[index].thumbnail),
                    ),
                  ),
                  Positioned(
                    right: 10.w,
                    top: 10.h,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30.r),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return moreOptionItem(context);
                            });
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10.h,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 190.w,
                      child: Text(
                        shortsList[index].title,
                        style:
                            bodyLarge(context)?.copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  List<HorizontalCategoryModel> videoCatList(BuildContext context) {
    return [
      HorizontalCategoryModel(title: 'SortBy'),
      HorizontalCategoryModel(title: 'Videos'),
      HorizontalCategoryModel(title: 'Shorts'),
      HorizontalCategoryModel(title: 'live'),
    ];
  }
}

///////////// 3 PlayList
class PlayListTab extends StatelessWidget {
  const PlayListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Chip(
                backgroundColor: Colors.white,
                shape: StadiumBorder(
                  side: BorderSide(color: myPinkAccent, width: 2),
                ),
                label: Row(
                  children: [
                    Text(
                      'SortBy',
                      style: bodyMedium(context)?.copyWith(color: myPinkAccent),
                    ),
                    width5(),
                    Icon(
                      CupertinoIcons.arrow_up_arrow_down,
                      size: 16.sp,
                    )
                  ],
                )),
          ),
          ListView(
            shrinkWrap: true,
            children: List.generate(5, (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Stack(
                          children: [
                            Image(
                              image: const AssetImage('assets/images/image1.jpg'),
                              height: 100.h,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width * .13,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '500',
                                      style: bodySmall(context)
                                          ?.copyWith(color: Colors.white),
                                    ),
                                    height5(),
                                    Icon(
                                      CupertinoIcons.play_circle_fill,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ListTile(
                        title: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Best Music Concert',
                            style: titleSmall(context)
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          'Concetta Revolution · 300 Videos',
                          style: bodySmall(context),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Fluttertoast.showToast(msg: 'More');
                          },
                          child: const Icon(Icons.more_vert_rounded),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

//////////// 4 About
class AboutTab extends StatelessWidget {
  AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: ListView(
        shrinkWrap: true,
        children: [
          height20(),
          Text(
            'Description',
            style: titleLarge(context),
          ),
          height10(),
          Text(videoDescription[0]),
          height20(),
          Text(
            'Links',
            style: titleLarge(context),
          ),
          height10(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              linkList.length,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: linkWidget(
                  context,
                  icon: linkList[index].icon,
                  text: linkList[index].text,
                ),
              ),
            ),
          ),
          height20(),
          Text(
            'More Info',
            style: titleLarge(context),
          ),
          height10(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              infoList.length,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: infoWidget(
                  context,
                  icon: infoList[index].icon,
                  text: infoList[index].text,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<AboutWidgetModel> linkList = [
    AboutWidgetModel(icon: FontAwesomeIcons.instagram, text: 'Instagram'),
    AboutWidgetModel(icon: FontAwesomeIcons.squareFacebook, text: 'Facebook'),
    AboutWidgetModel(icon: FontAwesomeIcons.squareTwitter, text: 'Twitter'),
    AboutWidgetModel(icon: FontAwesomeIcons.internetExplorer, text: 'Website'),
  ];
  final List<AboutWidgetModel> infoList = [
    AboutWidgetModel(icon: FontAwesomeIcons.mapPin, text: 'United States'),
    AboutWidgetModel(icon: FontAwesomeIcons.calendar, text: 'Joined 2020'),
    AboutWidgetModel(icon: FontAwesomeIcons.expand, text: '8,88,800 views'),
  ];
}

class AboutWidgetModel {
  AboutWidgetModel({
    required this.icon,
    required this.text,
    this.textColor,
  });

  var icon;
  String text;
  var textColor;
}

Widget linkWidget(
  BuildContext context, {
  required var icon,
  required String text,
}) {
  return Wrap(
    spacing: 10.h,
    children: [
      FaIcon(icon, size: 20.sp, color: myPinkAccent),
      Text(
        text,
        style: bodySmall(context)?.copyWith(
          color: myPinkAccent,
        ),
      ),
    ],
  );
}

Widget infoWidget(
  BuildContext context, {
  required var icon,
  required String text,
  var iconColor,
  var textColor,
}) {
  return Wrap(
    spacing: 10.h,
    children: [
      FaIcon(icon,
          size: 20.sp, color: textColor = Theme.of(context).primaryColor),
      Text(
        text,
        style: bodySmall(context)?.copyWith(
          color: iconColor = Theme.of(context).primaryColor,
        ),
      ),
    ],
  );
}

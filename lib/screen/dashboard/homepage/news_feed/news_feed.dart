import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/screen/video_player/video_channel/video_channel_view.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../../model/search_suggestions_model.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../model/news_feed_model.dart';
import '../../../video_player/video_play_view.dart';
import 'more_option_widget.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        feedList.length,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const VideoApp()));
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.r),
                    child: Image(
                      image: AssetImage(feedList[index].thumbnail),
                    ),
                  ),
                  Positioned(
                    right: 15.w,
                    bottom: 10.h,
                    child: Chip(
                      label: Text(
                        '18 : 27',
                        style: bodySmall(context)?.copyWith(
                            color: myPinkAccent, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            height10(),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, const VideoChannel().pageName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(feedList[index].profilePic),
                ),
                title: Text(
                  feedList[index].title,
                  style: titleSmall(context),
                ),
                subtitle: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '${feedList[index].channelName}  •  ${feedList[index].viewsCount} ${feedList[index].viewsText}  •  ${feedList[index].months}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: bodySmall(context),
                  ),
                ),
                trailing: GestureDetector(
                  child: Icon(
                    Icons.more_vert,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: () {
                    moreOption(context);
                  },
                ),
              ),
            ),
            height10(),
            Row(
              children: [
                Icon(
                  Icons.video_camera_back,
                  size: 30.sp,
                ),
                width10(),
                Text(
                  'Shorts',
                  style: titleLarge(context)?.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 28.sp),
                )
              ],
            ),
            height10(),
            const ShortsFeed(),
            height20(),
          ],
        ),
      ),
    );
  }
}

class ShortsFeed extends StatelessWidget {
  const ShortsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.w,
          children: List.generate(
            shortsList.length,
            (index) => Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 300.h,
                    width: 200.w,
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
                      style: bodyLarge(context)?.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

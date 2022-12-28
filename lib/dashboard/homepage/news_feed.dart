import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';
import '../../z_reusable_widget/text_custom.dart';
import '../search_bar/search_page_provider.dart';
import 'more_option_widget.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: List.generate(
          feedList.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.r),
                    child: Image(
                      image: AssetImage(feedList[index].image),
                    ),
                  ),
                  Positioned(
                    right: 15.w,
                    bottom: 10.h,
                    child: customBorderText(
                      backGroundColor: Colors.black,
                      textColor: Colors.white,
                      myText: '18 : 27',
                      fontSize: 10,
                      borderColor: Colors.transparent,
                      borderRadius: 10.r,
                    ),
                  )
                ],
              ),
              height10(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(feedList[index].profileDP),
                  ),
                  width5(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          feedList[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height5(),
                        Text(
                          '${feedList[index].channelName}  •  ${feedList[index].viewsCount} ${feedList[index].viewsText}  •  ${feedList[index].time}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  width5(),
                  GestureDetector(
                    child: Icon(
                      Icons.more_vert,
                      color: myBlack,
                    ),
                    onTap: () {
                      moreOption(context);
                    },
                  ),
                ],
              ),
              height10(),
              ShortsFeed(),
              height20(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShortsFeed extends StatelessWidget {
  const ShortsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.video_camera_back,
              size: 30.sp,
            ),
            width10(),
            myTextBold(text: 'Shorts')
          ],
        ),
        height10(),
        SizedBox(
          height: 300.h,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              shortsList.length,
                  (index) => Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.r),
                      child: Image(
                        fit: BoxFit.cover,
                        height: 300.h,
                        width: 200.w,
                        image: AssetImage(shortsList[index].image),
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
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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
        ),
      ],
    );
  }
}

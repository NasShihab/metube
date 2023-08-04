import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/model/comment_page_model.dart';
import 'package:metube/screen/dashboard/homepage/home_page_view/home_page_widget.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../../z_reusable_widget/height_weight.dart';

class ShortsComments extends StatelessWidget {
  const ShortsComments({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        height: myHeight(context) * .85,
        child: ListView(
          shrinkWrap: true,
          children: [
            height30(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Comments',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Icon(CupertinoIcons.xmark)
              ],
            ),
            height20(),
            HorizontalCategoryWidget(
              list: commentCategory(context),
            ),
            height10(),
            Row(
              children: [
                CircleAvatar(
                  radius: 16.r,
                  backgroundImage: AssetImage('assets/images/portrait1.jpg'),
                ),
                width10(),
                Expanded(
                  child: TextFormField(
                    style: bodySmall(context),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                      hintText: 'Add a comment',
                      hintStyle: bodySmall(context),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          gapPadding: 0),
                    ),
                  ),
                ),
              ],
            ),
            height20(),
            Divider(
              indent: 10.w,
              endIndent: 10.w,
              color: Theme.of(context).primaryColor.withOpacity(.1),
              thickness: 2,
            ),
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(commentData(context).length, (index) {
                final data = commentData(context)[index];
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(data.userPicture),
                        radius: 18.r,
                      ),
                      title: Row(
                        children: [
                          Text(
                            data.userName,
                            style: titleSmall(context),
                          ),
                          Text(
                            '   •   ',
                            style: bodySmall(context),
                          ),
                          Text(
                            data.commentsTime,
                            style: bodySmall(context),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    Text(
                      data.comments,
                      style: bodyMedium(context),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    height10(),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.hand_thumbsup),
                            width5(),
                            Text(data.likesCount),
                            width30(),
                            Icon(CupertinoIcons.hand_thumbsdown),
                            width5(),
                            Text(data.dislikeCount),
                            width30(),
                            Icon(CupertinoIcons.chat_bubble_text),
                            width5(),
                            Text(data.commentsCount),
                            width30(),
                          ],
                        ),
                      ],
                    ),
                    height20(),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

List<HorizontalCategoryModel> commentCategory(BuildContext context) {
  return [
    HorizontalCategoryModel(
        title: 'Top',
        function: (BuildContext context) {
          print('Top');
        }),
    HorizontalCategoryModel(
        title: 'Newest',
        function: (BuildContext context) {
          print('Newest');
        }),
    HorizontalCategoryModel(
        title: 'Most Liked',
        function: (BuildContext context) {
          print('Most Liked');
        }),
  ];
}

List<CommentPageModel> commentData(BuildContext context) {
  return [
    CommentPageModel(
      userPicture: 'assets/images/portrait1.jpg',
      userName: 'Aileen Fulbert',
      commentsTime: '2 Months Ago',
      comments: 'Just had the most amazing weekend getaway with friends! 🏝️😍 '
          'Making unforgettable memories that will last a lifetime! 💖 '
          '#WeekendVibes #FriendshipGoals #MemoriesMade',
      likesCount: '20 K',
      dislikeCount: '300',
      commentsCount: '325',
    ),
    CommentPageModel(
      userPicture: 'assets/images/portrait1.jpg',
      userName: 'Aileen Fulbert',
      commentsTime: '2 Months Ago',
      comments: 'Just had the most amazing weekend getaway with friends! 🏝️😍 '
          'Making unforgettable memories that will last a lifetime! 💖 '
          '#WeekendVibes #FriendshipGoals #MemoriesMade',
      likesCount: '20 K',
      dislikeCount: '300',
      commentsCount: '325',
    ),
    CommentPageModel(
      userPicture: 'assets/images/portrait1.jpg',
      userName: 'Aileen Fulbert',
      commentsTime: '2 Months Ago',
      comments: 'Just had the most amazing weekend getaway with friends! 🏝️😍 '
          'Making unforgettable memories that will last a lifetime! 💖 '
          '#WeekendVibes #FriendshipGoals #MemoriesMade',
      likesCount: '20 K',
      dislikeCount: '300',
      commentsCount: '325',
    ),
    CommentPageModel(
      userPicture: 'assets/images/portrait1.jpg',
      userName: 'Aileen Fulbert',
      commentsTime: '2 Months Ago',
      comments: 'Just had the most amazing weekend getaway with friends! 🏝️😍 '
          'Making unforgettable memories that will last a lifetime! 💖 '
          '#WeekendVibes #FriendshipGoals #MemoriesMade',
      likesCount: '20 K',
      dislikeCount: '300',
      commentsCount: '450',
    ),
  ];
}

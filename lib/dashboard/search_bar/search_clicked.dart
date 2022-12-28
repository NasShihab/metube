import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/search_bar/search_page_widget.dart';
import '../../z_reusable_widget/colors_custom.dart';
import '../../z_reusable_widget/height_weight.dart';
import '../../z_reusable_widget/text_custom.dart';
import '../homepage/more_option_widget.dart';

class SearchClicked extends StatelessWidget {
  SearchClicked({required this.searchIndex});

  final dynamic searchIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            customSearchBar(
              context,
              hintText: searchIndex.title,
              onChanged: (String value) {},
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  size: 30.sp,
                ),
              ),
            ),
            height10(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40.r),
                        child: Image(
                          image: AssetImage(searchIndex.image),
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
                        backgroundImage: AssetImage(searchIndex.profileDP),
                      ),
                      width5(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              searchIndex.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            height5(),
                            Text(
                              '${searchIndex.channelName}  •  ${searchIndex.viewsCount} ${searchIndex.viewsText}  •  ${searchIndex.time}',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

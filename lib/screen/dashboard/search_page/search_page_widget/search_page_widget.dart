import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/screen/dashboard/dashboard/dashboard.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../filter_menu/filter_menu.dart';

Widget searchBox(BuildContext context) {
  return Column(
    children: [
      height20(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: myPinkAccent,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: TextFormField(
                  style: bodyMedium(context)?.copyWith(color: Colors.black),
                  controller: TextEditingController(text: typeValue),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: myPinkAccent,
                      size: 20.sp,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.r),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return const FilterMenu();
                          },
                        );
                      },
                      child: Icon(
                        CupertinoIcons.arrow_up_arrow_down,
                        color: myPinkAccent,
                        size: 20.sp,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(15.r)),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: myGrey,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listening_page');
                },
                icon: Icon(
                  Icons.mic,
                  color: myPinkAccent,
                ),
              ),
            ),
          ],
        ),
      ),
      height20(),
      typeValue == 'Music'
          ? Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.r),
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/image1.jpg'),
                                  height: 280.h,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height: 280.h,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.5),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '500',
                                          style: displayMedium(context)
                                              ?.copyWith(color: Colors.white),
                                        ),
                                        Icon(
                                          CupertinoIcons.play_circle_fill,
                                          color: Colors.white,
                                          size: 40.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Best Music Concert',
                              style: titleMedium(context)
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Concetta Revolution · 300 Videos',
                              style: bodySmall(context),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                Fluttertoast.showToast(msg: 'More');
                              },
                              child: Icon(Icons.more_vert_rounded),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          : typeValue == 'Channel'
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      isThreeLine: true,
                      title: Text(
                        'Channel',
                        style: bodyLarge(context),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/portrait.jpg'),
                      ),
                      subtitle: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '12.6M Subscriber · 990 Videos',
                          style: bodySmall(context),
                        ),
                      ),
                      trailing: Chip(
                        label: Text(
                          'Subscribe',
                          style:
                              bodyLarge(context)?.copyWith(color: Colors.white),
                        ),
                        backgroundColor: myPinkAccent,
                      ),
                    );
                  },
                )
              : ListTile(
                  title: Text('No Data'),
                )
    ],
  );
}

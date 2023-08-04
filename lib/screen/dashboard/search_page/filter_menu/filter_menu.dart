import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/colors_custom.dart';
import '../search_page.dart';
import 'custom_dropdown_menu.dart';
//

class FilterMenu extends StatefulWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  State<FilterMenu> createState() => _FilterMenuState();
}

String sortByValue = 'Relevance';
String typeValue = 'All';
String updateDateValue = 'Any Time';
String durationValue = 'Any';
int selectedIndex = 0;

class _FilterMenuState extends State<FilterMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              'Search Filter',
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
            ),
            height20(),
            CustomDropDown(
              text: 'Sort By',
              menuItems: const [
                'Relevance',
                'Upload Date',
                'View Count',
                'Rating'
              ],
              onChanged: (value) {
                // ref.read(sortByProvider.notifier).update(value);
                setState(() {
                  sortByValue = value;
                });
              },
              // value: ref.watch(sortByProvider),
              value: sortByValue,
            ),
            CustomDropDown(
              text: 'Type',
              menuItems: const [
                'All',
                'Video',
                'Channel',
                'Playlist',
                'Music',
              ],
              onChanged: (value) {
                setState(() {
                  typeValue = value;
                });
              },
              value: typeValue,
            ),
            CustomDropDown(
              text: 'Update Date',
              menuItems: const [
                'Any Time',
                'Last hour',
                'Today',
                'This week',
                'This month',
                'This year',
              ],
              onChanged: (value) {
                setState(() {
                  updateDateValue = value;
                });
              },
              value: updateDateValue,
            ),
            CustomDropDown(
              text: 'Duration',
              menuItems: const [
                'Any',
                'Under 4 minutes',
                '4-20 minutes',
                'Over 20 minutes',
              ],
              onChanged: (value) {
                setState(() {
                  durationValue = value;
                });
              },
              value: durationValue,
            ),
            height20(),
            Row(
              children: [
                Text(
                  'More Features',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            height10(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Wrap(
                  // customBorderTextIcon(myText: 'Top'),
                  spacing: 10,
                  children: List.generate(
                    8,
                    (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: categoryItem(
                        index: index,
                        selectedIndex: selectedIndex, //selectedIndex,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            height10(),
            Row(
              children: [
                Expanded(
                  child: customButton(
                    title: 'Reset',
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Reset',
                        gravity: ToastGravity.CENTER,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: customButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Applied',
                          gravity: ToastGravity.CENTER,
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SearchPage(typeValue: typeValue,);
                        }));
                      },
                      title: 'Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget categoryItem({
  required int index,
  required int selectedIndex,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: selectedIndex == index ? myPinkAccent : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Text(
        '${listCategoryTrending[index].title}',
        style: TextStyle(
            color: selectedIndex == index ? Colors.white : myPinkAccent,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold),
      ),
    );

List listCategoryTrending = [
  CategoryListTrending('Live'),
  CategoryListTrending('4K'),
  CategoryListTrending('3D'),
  CategoryListTrending('HD'),
  CategoryListTrending('HDR'),
  CategoryListTrending('Subtitle'),
  CategoryListTrending('360'),
  CategoryListTrending('Subtitle/Cc'),
];

class CategoryListTrending {
  final String title;

  CategoryListTrending(
    this.title,
  );
}

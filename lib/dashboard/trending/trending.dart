import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/dashboard/trending/trending_widget.dart';
import 'package:metube/z_reusable_widget/appbar_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';
import '../homepage/home_page_widget.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: 'Trending'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                // customBorderTextIcon(myText: 'Top'),
                spacing: 10,
                children: List.generate(
                  5,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: categoryItem(index: index, selectedIndex: selectedIndex),
                  ),
                ),
              ),
            ),
            height20(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                  child: customFeed(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

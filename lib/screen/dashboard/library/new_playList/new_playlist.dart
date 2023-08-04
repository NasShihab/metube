import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../z_reusable_widget/buttons_custom.dart';
import '../../../../z_reusable_widget/height_weight.dart';
import '../../../../z_reusable_widget/text_material/text_theme.dart';

class NewPlayList extends StatelessWidget {
  const NewPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ['Private', 'Public'];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: myHeight(context) * .7,
      child: ListView(
        shrinkWrap: true,
        children: [
          height30(),
          Center(
            child: Text(
              'New Playlist',
              style: titleLarge(context),
            ),
          ),
          height30(),
          Text(
            'Playlist Title',
            style: bodyLarge(context),
          ),
          height15(),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              contentPadding: EdgeInsets.zero,
            ),
            style: bodySmall(context),
          ),
          height20(),
          Text(
            'Privacy',
            style: bodyLarge(context),
          ),
          height20(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(color: Colors.grey, width: 1.w),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: DropdownButton<String>(
                  style: bodyMedium(context),
                  isExpanded: true,
                  value: 'Private',
                  items: categories.map((data) {
                    return DropdownMenuItem<String>(
                      value: data,
                      child: Text(data),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(child: customButton(onPressed: () {})),
                Expanded(child: customButton(onPressed: () {})),
              ],
            ),
          )
        ],
      ),
    );
  }
}

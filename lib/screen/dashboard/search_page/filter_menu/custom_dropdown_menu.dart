import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class CustomDropDown extends StatelessWidget {
  final String text;
  final List<String> menuItems;
  final dynamic onChanged;
  final Object value;

  const CustomDropDown({
    super.key,
    required this.text,
    required this.menuItems,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 150.w,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: value, //ref.watch(filterMenuProvider),
                  style:
                      bodyLarge(context)?.copyWith(fontWeight: FontWeight.bold),
                  //<String>['Relevance', 'View', 'Latest']
                  items: menuItems
                      .map((String value) => DropdownMenuItem<String>(
                          value: value, child: Text(value)))
                      .toList(),
                  onChanged: onChanged,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

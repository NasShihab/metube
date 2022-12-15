import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  style: tStyle(),
                  //<String>['Relevance', 'View', 'Latest']
                  items: menuItems
                      .map((String value) => DropdownMenuItem<String>(
                          value: value, child: Text(value)))
                      .toList(),
                  onChanged: onChanged,
                  // onChanged: (sortby) {
                  //   ref.read(filterMenuProvider.notifier).update(sortby);
                  // } //ref.read(filterMenuProvider.notifier).update(sortby);
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  TextStyle tStyle() => TextStyle(
      fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold);
}

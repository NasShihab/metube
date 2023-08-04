import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metube/screen/dashboard/homepage/news_feed/radio_button_widget_provider.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

final radioItemProvider = StateNotifierProvider<RadioButtonProvider, int>(
  (ref) => RadioButtonProvider(),
);

class RadioButton extends ConsumerWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(radioItemProvider);

    return Container(
      height: MediaQuery.of(context).size.height * .50,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: ListView(
        children: [
          Text(
            'Report',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          height20(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: radioList.length,
              itemBuilder: (BuildContext context, int index) => Row(
                children: [
                  Radio(
                    value: index,
                    groupValue: selectedIndex,
                    onChanged: (value) {
                      ref.read(radioItemProvider.notifier).selected(index);
                    },
                  ),
                  Text(
                    '${radioList[index].text}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: customButton(
                  title: 'Cancel',
                  height: 60.h,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: customButton(
                  title: 'Report',
                  height: 60.h,
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Reported',
                      gravity: ToastGravity.CENTER,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List radioList = [
  RadioListClass('Sexual Content'),
  RadioListClass('Violate & Repulsive Content'),
  RadioListClass('Hateful & Abuse Content'),
  RadioListClass('Harmful & Dangerous Acts'),
  RadioListClass('Spam & Misleading'),
  RadioListClass('Child Abuse'),
  RadioListClass('Others'),
];

class RadioListClass {
  final String text;

  RadioListClass(
    this.text,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/height_weight.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
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
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value as int;
                      });
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
                    onPressed: () {},
                    backgroundColor: myGrey,
                    foregroundColor: myPinkAccent,
                    borderColor: myGrey,
                    height: 60.h),
              ),
              Expanded(
                child: customButton(
                    title: 'Report', onPressed: () {}, height: 60.h),
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

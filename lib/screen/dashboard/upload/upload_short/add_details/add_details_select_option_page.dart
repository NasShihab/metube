import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

import '../../../../../z_reusable_widget/buttons_custom.dart';

class AddDetailsOptions extends StatelessWidget {
  const AddDetailsOptions({super.key, required this.selectedValue});
  final int selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedValue == 1
              ? 'Set Visibility'
              : selectedValue == 2
                  ? 'Select Audience'
                  : selectedValue == 3
                      ? 'Schedule'
                      : 'Comments',
        ),
      ),
      body: selectedValue == 1
          ? const SetVisibility()
          : selectedValue == 2
              ? const SelectAudience()
              : selectedValue == 3
                  ? const Schedule()
                  : const Comments(),
    );
  }
}

class SetVisibility extends StatelessWidget {
  const SetVisibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Public'),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Unlisted'),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 3,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Private'),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
              width: double.infinity,
              child: customButton(onPressed: () {}, title: 'Apply'),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectAudience extends StatelessWidget {
  const SelectAudience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Is this video is made for kids ?',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'Yes, it\'s made for kids',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'No, it\'s not made for kids',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          title: Text(
            'Is this video is made for kids ?',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'Yes, restrict my video to viewers over 18',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'No, don\'t restrict my video to viewers over 18',
            style: bodyLarge(context),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
              width: double.infinity,
              child: customButton(onPressed: () {}, title: 'Apply'),
            ),
          ),
        ),
      ],
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'Publish Now',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'Unlisted',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 3,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: Text(
            'Schedule Time',
            style: bodyLarge(context),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
              width: double.infinity,
              child: customButton(onPressed: () {}, title: 'Apply'),
            ),
          ),
        ),
      ],
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Choose comment settings for this video',
            style: bodyLarge(context),
          ),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Allow all comments'),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Hold potentially inappropriate comments for review'),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 3,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Hold all comments for review'),
        ),
        ListTile(
          leading: Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              value: 4,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          title: const Text('Disable comments'),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
              width: double.infinity,
              child: customButton(onPressed: () {}, title: 'Apply'),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          image: AssetImage('assets/images/third_screen.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(title: 'Next', onPressed: () {
        Navigator.pushNamed(context, '/fourth_screen');
      }),
    );
  }
}

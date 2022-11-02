import 'package:flutter/material.dart';
import 'package:metube/z_reusable_widget/custom_buttons.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          image: AssetImage('assets/images/second_screen.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(title: 'Next', onPressed: () {
        Navigator.pushNamed(context, '/third_screen');
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:metube/z_reusable_widget/buttons_custom.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          image: AssetImage('assets/images/fourth_screen.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: customButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          }),
    );
  }
}

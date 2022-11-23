import 'package:flutter/material.dart';
import 'package:metube/auth/fill_profile.dart';
import 'package:metube/auth/forget_password.dart';
import 'package:metube/screens/fourth_screen.dart';
import 'package:metube/auth/login.dart';
import 'package:metube/auth/sign_up.dart';
import 'package:metube/screens/third_screen.dart';
import 'package:metube/screens/welcome.dart';
import '../auth/create_new_password.dart';
import '../auth/enter_otp_code.dart';
import '../auth/create_pin.dart';
import '../auth/fingerprint.dart';
import '../dashboard/home_page.dart';
import '../screens/second_screen.dart';

var myRoutes = <String, WidgetBuilder>{

  '/': (context) => const HomePage(),
  '/second_screen': (context) => const SecondScreen(),
  '/third_screen': (context) => const ThirdScreen(),
  '/fourth_screen': (context) => const FourthScreen(),
  '/welcome': (context) => const Welcome(),
  '/login': (context) => const Login(),
  '/sign_up': (context) => const SignUp(),
  '/fill_profile': (context) => const FillProfile(),
  '/create_pin': (context) => const CreatePin(),
  '/fingerprint': (context) => const Fingerprint(),
  '/home_page': (context) => const HomePage(),
  '/forget_password': (context) => const ForgetPassword(),
  '/enter_otp_code': (context) => const EnterOtpCode(),
  '/create_new_password': (context) => const CreateNewPassword(),
};

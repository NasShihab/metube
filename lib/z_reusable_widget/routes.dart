import 'package:flutter/material.dart';
import 'package:metube/auth/fill_profile.dart';
import 'package:metube/auth/forget_password.dart';
import 'package:metube/dashboard/dashboard/dashboard.dart';
import 'package:metube/auth/login.dart';
import 'package:metube/auth/sign_up.dart';
import 'package:metube/dashboard/notification/notification_page.dart';
import 'package:metube/dashboard/search_bar/search_page.dart';
import '../auth/create_new_password.dart';
import '../auth/enter_otp_code.dart';
import '../auth/create_pin.dart';
import '../auth/fingerprint.dart';
import '../dashboard/homepage/home_page.dart';
import '../dashboard/search_bar/listening/listening_page.dart';
import '../dashboard/trending/trending.dart';
import '../onboarding/first_screen.dart';
import '../onboarding/starter_screens/onboard_page.dart';
import '../auth/welcome.dart';

var myRoutes = <String, WidgetBuilder>{

  '/': (context) =>  Onboard_Page(),
  '/dashboard': (context) => const Dashboard(),
  '/welcome': (context) => const Welcome(),
  '/firstScreen': (context) => const FirstScreen(),
  '/onboard_page': (context) =>  Onboard_Page(),
  '/login': (context) => const Login(),
  '/sign_up': (context) => const SignUp(),
  '/fill_profile': (context) => const FillProfile(),
  '/create_pin': (context) => const CreatePin(),
  '/fingerprint': (context) => const Fingerprint(),
  '/home_page': (context) => const HomePage(),
  '/forget_password': (context) => const ForgetPassword(),
  '/enter_otp_code': (context) => const EnterOtpCode(),
  '/create_new_password': (context) => const CreateNewPassword(),
  '/notification_page': (context) => const NotificationPage(),
  '/trending': (context) => const Trending(),
  '/search_page': (context) => const SearchPage(),
  '/listening_page': (context) => const ListeningPage(),
};

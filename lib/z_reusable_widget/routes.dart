import 'package:flutter/material.dart';
import 'package:metube/auth/fill_profile.dart';
import 'package:metube/auth/forgot_password/forget_password.dart';
import 'package:metube/auth/login.dart';
import 'package:metube/auth/sign_up.dart';
import 'package:metube/screen/dashboard/dashboard/dashboard.dart';
import '../auth/forgot_password/create_new_password.dart';
import '../auth/enter_otp_code.dart';
import '../auth/create_pin.dart';
import '../auth/fingerprint.dart';
import '../auth/welcome.dart';
import '../screen/dashboard/homepage/home_page_view/home_page.dart';
import '../screen/dashboard/homepage/notification/notification_page.dart';
import '../screen/dashboard/search_page/listening/listening_page.dart';
import '../screen/dashboard/trending/trending.dart';
import '../screen/onboarding/splash_screen.dart';
import '../screen/onboarding/starter_screens/onboard_page.dart';
import '../screen/video_player/video_channel/video_channel_view.dart';
import '../screen/video_player/video_play_view.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
  '/splash_screen': (context) => const SplashScreen(),
  '/onboard_page': (context) => const OnboardPage(),
  '/dashboard': (context) => const Dashboard(),
  '/welcome': (context) => const Welcome(),
  '/login': (context) => const Login(),
  '/sign_up': (context) => const SignUp(),
  '/fill_profile': (context) => const FillProfile(),
  '/create_pin': (context) => const CreatePin(),
  '/fingerprint': (context) => const Fingerprint(),
  '/home_page': (context) => HomePage(),
  '/forget_password': (context) => const ForgetPassword(),
  '/enter_otp_code': (context) => const EnterOtpCode(),
  '/create_new_password': (context) => const CreateNewPassword(),
  '/notification_page': (context) => const NotificationPage(),
  '/trending': (context) => const Trending(),
  '/listening_page': (context) => const ListeningPage(),
  '/VideoApp': (context) => const VideoApp(),
  const VideoChannel().pageName: (context) => const VideoChannel(),
};

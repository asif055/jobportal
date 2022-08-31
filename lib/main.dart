import 'package:flutter/material.dart';
import 'package:jobportal/UI/Screens/home_for_organization.dart';
import 'package:jobportal/UI/Screens/profile_for_organization.dart';

import 'UI/Screens/home_for_applicant.dart';
import 'UI/Screens/login_button_for_both.dart';
import 'UI/Screens/login_for_organization.dart';
import 'UI/Screens/login_screen.dart';
import 'UI/Screens/profile.dart';
import 'UI/Screens/register_Screen.dart';
import 'UI/Screens/register_button_for_both.dart';
import 'UI/Screens/register_for_organization.dart';
import 'UI/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Portal!!',
      home: SplashScreen(),
    );
  }
}

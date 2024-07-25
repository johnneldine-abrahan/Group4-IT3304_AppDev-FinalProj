import 'package:student_portal/screens/announcements/announcements.dart';
import 'package:student_portal/screens/grades/grades.dart';
import 'package:student_portal/screens/home_screen/home_screen.dart';
import 'package:student_portal/screens/liabilities/liabilities.dart';
import 'package:student_portal/screens/login_screen/login_screen.dart';
import 'package:student_portal/screens/my_profile/my_profile.dart';
import 'package:student_portal/screens/payments/payments.dart';
import 'package:student_portal/screens/splash_screen/splash_screen.dart';
import 'package:student_portal/screens/subjects/subjects.dart';
import 'package:student_portal/screens/view_all_grades/view_all_grades.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  LoginScreen.routeName : (context) => LoginScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  MyProfileScreen.routeName : (context) => MyProfileScreen(),
  Payments.routeName : (context) => Payments(),
  Subjects_list.routeName : (context) => Subjects_list(),
  Announcements.routeName : (context) => Announcements(),
  View_All_Grades.routeName : (context) => View_All_Grades(),
  Grades.routeName : (context) => Grades(),
  Liabilities.routeName : (context) => Liabilities(),
};
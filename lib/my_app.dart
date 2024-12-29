import 'package:flutter/material.dart';
import 'package:untitled2/screens/eraa_app.dart';
import 'package:untitled2/screens/eraasoft_home_screen.dart';
import 'package:untitled2/screens/instgram.dart';
import 'package:untitled2/screens/login_dark.dart';
import 'package:untitled2/screens/profile.dart';


import 'package:untitled2/screens/screen1.dart';
import 'package:untitled2/screens/screen2.dart';
import 'package:untitled2/screens/task_home.dart';
import 'package:untitled2/screens/topic_app.dart';
import 'package:untitled2/widgets/profile_info.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: EraaApp());
  }
}

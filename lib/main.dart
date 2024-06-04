import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_networking.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_castingcalls.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_feedback.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_firstpage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_getstarted.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_menu.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_profiletabview.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinebyte Admin',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff12141A),
        useMaterial3: true,
      ),
      home: const admin_homepage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager_app/screen/home_screen.dart';
import 'package:task_manager_app/screen/login_page.dart';
import 'package:task_manager_app/screen/login_page1.dart';
import 'package:task_manager_app/screen/login_page2.dart';
import 'package:task_manager_app/screen/login_page3.dart';
import 'package:task_manager_app/screen/login_page4.dart';
import 'package:task_manager_app/screen/update_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

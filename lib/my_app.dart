import 'package:flutter/material.dart';
// import 'package:task_manager_app/screen/home_screen.dart';
// import 'package:task_manager_app/screen/login_page.dart';
// import 'package:task_manager_app/screen/login_page1.dart';
import 'package:task_manager_app/screen/login_page2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey, // Border color when enabled
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage2(),
    );
  }
}

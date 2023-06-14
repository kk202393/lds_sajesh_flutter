// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/courses/selfCourseEnroll.dart';
import 'package:sajesh_app/screens/userAuthScreens/loginScreen.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';

import '../notificationScreen/notificationDetails.dart';

class AppSpleshScreen extends StatefulWidget {
  const AppSpleshScreen({super.key, required String title});

  @override
  State<AppSpleshScreen> createState() => _AppSpleshScreenState();
}

class _AppSpleshScreenState extends State<AppSpleshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const LoginScreen(
                    title: 'Learning Management System', languageCode: '',
                    // languageCode: '',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/LDS.jpeg',
            height: 400,
            width: 400,
          ),
        ],
      )),
    ));
  }
}

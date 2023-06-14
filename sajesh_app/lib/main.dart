import 'package:flutter/material.dart';
// import 'package:sajesh_app/screens/courses/selfCourseEnroll.dart';
// import 'package:sajesh_app/screens/notificationScreen/notificationDetails.dart';
// import 'package:sajesh_app/screens/notificationScreen/notificationScreen.dart';
import 'package:sajesh_app/screens/userAuthScreens/appSpleshScreen.dart';
// import 'package:sajesh_app/screens/userDetailsScreens/editProfileScreen.dart';
// import 'package:sajesh_app/screens/userAuthScreens/loginScreen.dart';
// import 'package:sajesh_app/screens/userDetailsScreens/userProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AppSpleshScreen(
        title: 'Learning Management System',
        // languageCode: '',
      ),
    );
  }
}

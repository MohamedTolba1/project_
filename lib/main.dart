import 'package:application/screens/profile_user.dart';
import 'package:application/screens/sign_in_page.dart';
import 'package:application/test11.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'myTest.dart';
import 'screens/loading_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData( primarySwatch: Colors.teal,/* canvasColor: Colors.blueGrey ,backgroundColor: Colors.red ,*/ ) ,
      debugShowCheckedModeBanner: false,
     // darkTheme: ThemeData(primaryColor: Colors.blue,canvasColor: Colors.black),
      home: LoadingScreen(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:intl/intl.dart';
//import 'package:untitled/UnUse/ImageUploadScreen.dart';

import 'HomeScreen.dart';
import 'login_page.dart';
import 'navegator_page.dart';
class LoadingHomeScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}



class _LoadingScreenState extends State<LoadingHomeScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for loading purposes
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after loading
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavBarScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/mmm.jpeg'),
          fit: BoxFit.fill ,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              SizedBox(height:30),



              SizedBox(height:15),
              Text('Loading...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25 ,
                  color: Colors.white54)),
              SizedBox(height:15),
              CircularProgressIndicator(color: Colors.blue
                ,),
            ],
          ),
        ),
      ),
    );
  }
}

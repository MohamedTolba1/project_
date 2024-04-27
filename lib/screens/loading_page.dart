import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}



class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for loading purposes
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the next screen after loading
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginForm()),
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
          image: AssetImage('assets/c8b5fc3921aec36ebe04098c1a0f0218.jpg'),
          fit: BoxFit.fill ,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            SizedBox(height:330),
            CircularProgressIndicator( color: Colors.blue,),
            SizedBox(height: 200,),
            Text('WELCOM',style: TextStyle(fontSize: 30 ,
                color: Colors.white54),),
          ],
        ),
      ),
    );
  }
}


import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Camera/galleryScreen.dart';
import '../camera/CameraScreen.dart';



class HomeScreen extends  StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<File> selectedImages = [];
  final picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration( image: DecorationImage(
            image: AssetImage('assets/IMAGE 2024-03-06 22:36:21.jpg'),
            fit: BoxFit.cover ),),

        child: Column(
          children:

          [
            Padding(
              padding: const EdgeInsets.only(top: 50 , bottom: 100),
              child: Container(


                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('welcome..' ,
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.blue,
                            ) ,),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0 , right: 5 , left: 10),
                      child: Text('this application helps you detect counterfeit currencies from original  all you have to do is photograph it and then the AI will detect your money . ' ,
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white70,
                        ) ,),
                    ),

                  ],
                ),

              ),
            ),
            const SizedBox(
              height: 60,
            ),


            Container(
              height: 50,
             // width: 200,
              child: ElevatedButton(

                  style:  ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),

                    ),
                  ),

                  onPressed: () {
                    showModalBottomSheet ( context: context, builder: (BuildContext context) {

                      return Container(
                        height: 130,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                              child: Row(
                                children:
                                [
                                  Expanded(
                                    child: ElevatedButton(  onPressed: () async { await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => CameraScreen(cameras: value,),)),);},
                                      child: const Text('Open Camera'),
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set background color
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set text color
                                        textStyle: MaterialStateProperty.all<TextStyle>(
                                          TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                                        ),
                                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                                        ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                                          ),
                                        ),
                                        elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15,),
                                  Expanded(
                                    child: ElevatedButton(

                                      onPressed: () async {
                                        await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => galleryScreen(),)),);
                                      },
                                      child: const Text('from Gallery'),
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set background color
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set text color
                                        textStyle: MaterialStateProperty.all<TextStyle>(
                                          TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                                        ),
                                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                                        ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                                          ),
                                        ),
                                        elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // ElevatedButton(
                            //     onPressed: () {
                            //       Navigator.pop(context);
                            //     },
                            //     // you can show here any thing.
                            //     child: const Text("Close")),
                            TextButton( onPressed: () { Navigator.pop(context);},
                              child: const Text("Close" ,style: TextStyle(color: Colors.red ,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold),),

                            ),

                          ],
                        ),
                      );
                    });
                  },
                  child: const Text(" Select Image " ,
                  style: TextStyle(
                    fontSize: 20,
                  ),)),
            ),


          ],
        ),
      ),
    );

  }


}




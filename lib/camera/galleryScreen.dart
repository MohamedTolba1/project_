import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class galleryScreen extends StatefulWidget {
  const galleryScreen({super.key});

  @override
  State<galleryScreen> createState() => _galleryScreenState();
}

class _galleryScreenState extends State<galleryScreen> {


  List<File> selectedImages = [];
  final picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(

      body:  Container(


        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/Unknown.jpeg'),
          fit: BoxFit.fill ,
        )),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            Row(
              children: [
                IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
              ],
            ),
            SizedBox(height: 20,),
            Container(

              height: 38,
              width: 180,

              child: ElevatedButton(
                style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Colors.blue) ,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  ),

                ),
                child: const Text('Select Image '),
                onPressed: () {
                  getImages();
                },
              ),
            ),
            SizedBox(height: 20,),
            Expanded(

              child: SizedBox(

                child: selectedImages.isEmpty
                    ? const Center (
                    child: Text('Sorry nothing selected!!'))
                    : GridView.builder(

                  itemCount: selectedImages.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 1),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(

                        child: kIsWeb
                            ? Image.network(selectedImages[index].path)
                            : Image.file(selectedImages[index]));
                  },
                ),
              ),
            ),
            Center(
              child: Container(

                height: 38,
                width: 180,
                child: ElevatedButton(

                  style:  ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(Colors.blue) ,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    ),

                  ),
                  onPressed: () {},

                  child: Text(
                    'Result',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                  ),


                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }



  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
          () {

        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

}
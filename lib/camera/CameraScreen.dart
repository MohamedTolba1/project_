import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraScreen({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,

    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(

      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/Unknown.jpeg'),
          fit: BoxFit.fill ,
        )),


        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              children: [
                IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(

                  height: 270,
                  width: 270,
                  child: CameraPreview(controller),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Colors.blue) ,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  ),

                ),
                onPressed: () async {
                  pictureFile = await controller.takePicture();
                  setState(() {});
                },
                child: const Text('Capture Image',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),),
              ),
            ),
            SizedBox(height: 15,),
            if (pictureFile != null)
              Column(
                children: [
                  Image.network(
                    pictureFile!.path,
                    height: 200 ,

                  ),
                  SizedBox(height: 25  ,),
                  Center(
                    child: Container(

                      height: 38,
                      width: 180,
                      child: ElevatedButton(

                        style:  ButtonStyle(
                          // backgroundColor: MaterialStateProperty.all<Color>(Colors.green) ,
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
                ],
              ) ,


          ],
        ),
      ),
    );
  }
}

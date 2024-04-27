//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

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
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(
          height: 40),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/profile973460_960_720.webp"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Mohamed tolba",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold ,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 0,
            ),
            const Text("Account user"  ,
              style: TextStyle(fontSize: 15,
              color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.settings ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white38),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                  ),
                  label: const Text(
                    "Settings",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.notifications ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white38),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    ),
                  ),
                  label: const Text(
                    "notifications",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.do_not_disturb_on_outlined ),

                  //icon social media
                  //icon: FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white38),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    ),
                  ),
                  label: const Text(
                    "about",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),


              ],
            ),



            Padding(
              padding: const EdgeInsets.only(right: 135 , top: 20 , bottom: 0),
              child: Card(

                color: Colors.white38,
                child: Container(

                  width:  245,
                  height: 250 ,

                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.black,
                      //   spreadRadius: 3,
                      //   blurRadius: 2,
                      //   offset: Offset(0,3),
                      // ),
                    ],
                  ),
                  child: Column(
                    children:
                    [
                      SizedBox(height: 15 ,),

                  SizedBox(height: 10 ,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children:
                      [

                        Icon(Icons.email_outlined , ),
                        SizedBox(width: 5 ,),
                        Text('mohamed663@gmail.com' ,
                          style: TextStyle(fontWeight: FontWeight.bold), ),

                      ],
                    ),),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [


                            Icon(Icons.phone , ),
                            SizedBox(width: 5 ,),
                            Text('+20-106-788-870' ,
                       style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                      SizedBox(height: 10 ,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children:
                          [

                            Icon(Icons.location_on_outlined , ),
                            SizedBox(width: 5 ,),
                            Text('6 October City'
                              ,style: TextStyle(fontWeight: FontWeight.bold), ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10 ,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children:
                          [

                            Icon(Icons.date_range_sharp , ),
                            SizedBox(width: 5 ,),
                            Text('1\/5\/2000'
                              ,style: TextStyle(fontWeight: FontWeight.bold), ),

                          ],
                        ),
                      ),



                    ],
                  ),



                ),



              ),
            ),
          ],
        ),
      ),
    );

  }
}
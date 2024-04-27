//
// import 'package:application/screens/sign_in_page.dart';
// import 'package:flutter/material.dart';

// import 'HomeScreen.dart';
// import 'loading_to_home.dart';
// class LoginDemo extends StatefulWidget {
//   // const LoginDemo({super.key });
//
//   @override
//   _LoginDemoState createState() => new _LoginDemoState();
// // LoginDemo createState() {
// //return new _LoginDemoState();
// }
// //}
// class _LoginDemoState extends State<LoginDemo> {
//
//   var passwordControllar = TextEditingController();
//
//   var emaillControllar = TextEditingController();
//
//   var passVisabil = true ;
//
//   final _form = GlobalKey<FormState>(); //for storing form state.
//   final _controllerE = TextEditingController();
//   bool _validate = false;
//
//   @override
//   void dispose() {
//     _controllerE.dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(image: DecorationImage(
//           image: AssetImage('assets/2024-02-26 08.28.05.jpg'),
//           fit: BoxFit.fill ,
//         )),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               // const SizedBox(
//               //   height: 30,
//               // )
//               //,
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 60.0),
//               //   child: Center(
//               //     child: SizedBox(
//               //         width: 300,
//               //         height: 150,
//               //         /*decoration: BoxDecoration(
//               //             color: Colors.red,
//               //             borderRadius: BorderRadius.circular(50.0)),*/
//               //         // child:Container(
//               //         //   height: 100,
//               //         //   width: 100,
//               //         //   decoration: BoxDecoration(
//               //         //     borderRadius: BorderRadius.all(Radius.circular(15)),
//               //         //
//               //         //     border: Border.all(
//               //         //       width: 3,
//               //         //       color: Colors.white,
//               //         //       style: BorderStyle.solid,
//               //         //     ),
//               //         //  // ),
//               //         //   //decoration: BoxDecoration(
//               //         //     image: const DecorationImage(
//               //         //       image: AssetImage(
//               //         //           'assets/desktop-wallpaper-falling-money-high-quality-resolution-62d-wallpey-background-raining-money.jpg'),
//               //         //       fit: BoxFit.fill,
//               //         //     ),
//               //         //     //shape: BoxShape.,
//               //         //   ),
//               //         //
//               //         // )
//               //   ),
//               //   ),
//               //
//               // ),
//               const SizedBox(
//                 height: 220,
//               )
//               ,
//               const Text(' Chick Money \$', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize:40 ,
//                 color: Colors.white70,
//               ),),
//               const SizedBox(
//                 height: 45,
//               ),
//
//               //.  Text('Error Showed if Field is Empty on Submit button Pressed'),
//
//               Padding(
//                 //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextField(
//                   controller: _controllerE,
//                   decoration: InputDecoration(
//                     // labelText: 'Enter the Value',
//                       errorText: _validate ? "Value Can't Be Empty" : null,
//
//                       filled: true,
//                       fillColor: Colors.white10,
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
//                       prefixIcon: const Icon(
//                           Icons.email
//                       ),
//                       labelText: 'Email',
//
//                       hintText: 'Enter your Email'),
//
//
//
//
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all( 15),
//                 child: TextFormField(
//
//                   controller: passwordControllar,
//                   decoration: InputDecoration(
//                     errorText: _validate ? "Value Can't Be Empty" : null,
//                     filled: true,
//                     fillColor: Colors.white10,
//                     // prefixIconColor: Colors.orange,
//
//                     labelText: 'Password',
//                     border:  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
//                     prefixIcon: const Icon(
//                       Icons.lock,
//                     ),
//
//                     suffixIcon: IconButton(
//                       onPressed: () {setState( ( ) { passVisabil=!passVisabil ;} ) ; } ,
//                       icon: Icon(passVisabil? Icons.visibility : Icons.visibility_off),
//                       color: Colors.black,
//                     ),
//                   ),
//                   keyboardType: TextInputType.phone,
//                   obscureText: passVisabil ,
//                 ),
//               ),
//               TextButton(
//                 onPressed: (){
//
//                 },
//                 child: const Text(
//                   'Forgot Password?',
//                   style: TextStyle(color: Colors.white, fontSize: 15),
//                 ),
//               ),
//               Container(
//                 height: 50,
//                 width: 150,
//                 child: ElevatedButton(
//                   style:  ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//
//                       ),
//
//                     ),
//                   ),
//                   onPressed: () {
//                     setState(()  {
//                       if( _validate != null ){
//                         _validate = _controllerE.text.isEmpty;
//                         _validate = passwordControllar.text.isEmpty;
//                       }
//
//                       else{
//
//                         Future.microtask(() => Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => LoadingHomeScreen ())
//                         ));
//                         print(emaillControllar.text);
//                         print(passwordControllar.text);
//                       }
//
//
//                     });
//                     //   else{
//                     //
//                     //
//                     // print(emaillControllar.text);
//                     // print(passwordControllar.text);
//                     // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen ()));
//                     // };
//
//                   },
//                   child: const Text(
//                     'Log in',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//
//                     ),
//                   ),
//
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               TextButton(
//                 onPressed: (){
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => SignUpScreen()));
//                 },
//                 child: const Text(
//                   'New User? Create Account',
//                   style: TextStyle(color: Colors.white, fontSize: 15),
//                 ),
//               ),
//
//               //const Text('New User? Create Account')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


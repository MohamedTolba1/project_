import 'package:application/screens/loading_to_home.dart';
import 'package:application/screens/sign_in_page.dart';
import 'package:flutter/material.dart';
//import 'package:test_app/page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  var passVisabil = true ;

  void _LoginForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      // Perform email and password validation logic here
      if ( _email == '1' && _password== '1') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoadingHomeScreen(),
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Invalid Credentials'),
              content: Text('Please enter valid email and password.'),
              actions: [
                ElevatedButton(

             style :ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black54), ),
                  child: Text('OK' ,),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/mmm.jpeg'),
          fit: BoxFit.fill ,
        )),
        child: SingleChildScrollView(

          child: Column(
            children: [
              const SizedBox(
                height: 150,
              )
              ,
              const Text(' Check \$ Money ', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:40 ,
                color: Colors.white70,
              ),),
              const SizedBox(
                height: 110,
              ),
              Container(
                child: Form(

                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all( 12),

                        child: TextFormField(

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white30,
                            labelText: 'Email',
                            border:  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                          ),

                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is required.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _email = value!;
                          },
                          keyboardType: TextInputType.emailAddress,

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all( 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white30,
                            labelText: 'Password',
                            border:  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),

                            suffixIcon: IconButton(
                              onPressed: () {setState( ( ) { passVisabil=!passVisabil ;} ) ; } ,
                              icon: Icon(passVisabil? Icons.visibility : Icons.visibility_off),
                              color: Colors.blue,
                            ),
                          ),
                          obscureText: passVisabil,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is required.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      TextButton(
                        onPressed: (){

                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style:  ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),

                              ),

                            ),
                          ),
                          onPressed: _LoginForm,
                          child: Text('Login' ,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,

                            ),),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => SignUpScreen()));
                        },
                        child: const Text(
                          'New User? Create Account',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
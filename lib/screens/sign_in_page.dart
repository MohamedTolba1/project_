import 'package:flutter/material.dart';
import 'login_page.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});




  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  late String _fname;
  late String _lname;
  late String _Rpassword;
  late String _date;


  var passVisabil = true ;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      // Perform email and password validation logic here
      if (_email != null && _password != null && _fname != null
          && _lname != null && _Rpassword == _password && _date != null

      ) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('succeeded'),
              content: const Text('your sign up has succeesfully'),
              actions: [
                ElevatedButton(

                  style :ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black54), ),
                  child: const Text('OK' ,),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
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

      body:

      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/mmm.jpeg'),
          fit: BoxFit.fill ,
        )),
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                       const Center(
                        child:
                        Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Create your account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(
                        height: 30,
                      ),


                      TextFormField(

                        decoration:  InputDecoration(
                          filled: true,
                          fillColor: Colors.white30,

                          labelText: 'First Name',

                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon( Icons.account_circle_outlined,
                          color: Colors.blue,)
                          ,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'First Name is required.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _fname = value!;
                        },

                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      TextFormField(

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white30,
                          labelText: 'Last Name',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'Last Name is required.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _lname = value!;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      TextFormField(
                       // controller: emaillControllar,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white30,
                          labelText: 'E-mail',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 10) {
                            return 'Email is required.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),

                      TextFormField(
                       // controller: passwordControllar,
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
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8 ) {
                            return 'password is required.';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                        keyboardType: TextInputType.phone,
                        obscureText: passVisabil ,
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      TextFormField(

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white30,
                          labelText: 'Repeat Password',
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
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Repeat Password is required.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _Rpassword = value!;
                        },
                        keyboardType: TextInputType.phone,
                        obscureText: passVisabil ,
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),


                      TextFormField(

                        decoration:  InputDecoration(
                          filled: true,
                          fillColor: Colors.white30,
                          labelText: ' Enter Date',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(
                            Icons.date_range,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Date is required.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _date = value!;
                        },
                        keyboardType: TextInputType.datetime,
                      ),


                      const SizedBox(
                        height: 15.5,
                      ),
                      Center(
                        child: Container(
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
                            onPressed:
                              _submitForm ,



                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,

                              ),
                            ),

                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.5,
                      ),

                      Center(
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => LoginForm()));
                          },
                          child: const Text(
                            'Back To Log In',
                            style: TextStyle(color: Colors.redAccent, fontSize: 15 ,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}

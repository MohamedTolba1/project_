import 'package:application/screens/profile_user.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';



class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<NavBarScreen> {

  int myCurrentIndex = 0;
  List pages = const

  [
    HomeScreen(),

    profilePage(),

  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(




        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration( boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20)
          ) ,
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ClipRRect(

            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(

                backgroundColor: Colors.white24,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.black,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items: const
                [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", ),
                  // BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite" , ),
                  // BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
                ]
            ),
          ),
        ),

      ),
      body: pages[myCurrentIndex],

    );
  }
}



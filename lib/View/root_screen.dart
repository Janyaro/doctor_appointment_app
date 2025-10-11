import 'package:doctor_app/View/home_screen.dart';
import 'package:doctor_app/View/precription_screen.dart';
import 'package:doctor_app/View/user_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentScreen = 0;

  final List<Widget> screens = [
    HomeScreen(),
    PrecriptionScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen, // highlight selected item
        onTap: (index) {
          setState(() {
            currentScreen = index;
          });
        },
        type: BottomNavigationBarType.fixed, // allows 4+ items
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}

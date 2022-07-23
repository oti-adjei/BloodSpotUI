// import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'screens/add.dart';
import 'screens/home.dart';
import 'screens/settings.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int currentIndex = 0;

  // list of screens that will be rendered in the scaffold body
  final List screens = [
    const Home(),
    const Add(),
    const Settings(),
  ];
  // current index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home
                // AkarIcons.home
                ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule
                // AkarIcons.schedule
                ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings
                //AkarIcons.person
                ),
            label: 'Account',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}

import 'package:demo_app/Ui_tasks/history_screen.dart';
import 'package:demo_app/Ui_tasks/home_screen.dart';
import 'package:demo_app/Ui_tasks/notification_screen.dart';
import 'package:demo_app/Ui_tasks/profile_screen.dart';
import 'package:demo_app/screen2.dart';
import 'package:flutter/material.dart';

class BottomNaviga extends StatefulWidget {
  const BottomNaviga({super.key});

  @override
  State<BottomNaviga> createState() => _BottomNavigaState();
}

class _BottomNavigaState extends State<BottomNaviga> {
  int myindex = 0;
  _tabchange(index) {
    setState(() {
      myindex = index;
    });
  }

  @override
  List screens = [
    HomeScreen(),
    NotificationScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _tabchange(index),
        currentIndex: myindex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

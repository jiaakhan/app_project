import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentindex = 0;
  _changeTab(index) {
    setState(() {
      currentindex = index;
    });
  }

  List screens = [
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 45),
              )),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                'Events',
                style: TextStyle(fontSize: 45),
              )),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Music',
                style: TextStyle(fontSize: 45),
              )),
        ],
      ),
    )
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music'),
        ],
      ),
    );
  }
}

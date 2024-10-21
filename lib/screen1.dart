import 'package:demo_app/screen2.dart';
import 'package:demo_app/screen3.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool login = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/download.jpeg",
              height: 280,
              width: 200,
            ),
            SizedBox(
              height: 140,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen3()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: login ? Colors.black : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(14),
                  color: login ? Colors.black : Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: login ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen2()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Change border color
                    ),
                    borderRadius: BorderRadius.circular(14),
                    color: !login ? Colors.black : Colors.white),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: !login
                          ? Colors.white
                          : Colors.black, // Change text color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

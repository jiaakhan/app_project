import 'package:demo_app/Ui_tasks/bottom_naviga.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNaviga()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage(
                'assets/download.jpeg',
              ),
            ),
            SizedBox(height: 30),
            Text(
              'English talkE',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

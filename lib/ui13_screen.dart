import 'package:flutter/material.dart';

class Ui13Screen extends StatefulWidget {
  const Ui13Screen({super.key});

  @override
  State<Ui13Screen> createState() => _Ui13ScreenState();
}

class _Ui13ScreenState extends State<Ui13Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

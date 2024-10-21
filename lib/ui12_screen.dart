import 'package:flutter/material.dart';

class Ui12Screen extends StatefulWidget {
  const Ui12Screen({super.key});

  @override
  State<Ui12Screen> createState() => _Ui12ScreenState();
}

class _Ui12ScreenState extends State<Ui12Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 11, 21, 154)),
                ),
                Container(
                  height: 370,
                  width: 270,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Text(
                          'thi is first task os stack ',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -80,
                  child: Container(
                    height: 180,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(120)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              'assets/1.jpeg',
                              height: 180,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
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

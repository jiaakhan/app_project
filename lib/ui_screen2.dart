import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiScreen2 extends StatefulWidget {
  const UiScreen2({super.key});

  @override
  State<UiScreen2> createState() => _UiScreen2State();
}

class _UiScreen2State extends State<UiScreen2> {
  bool isVideoCall = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(246, 243, 239, 239),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Lesson History',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVideoCall = true;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Video Call',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: isVideoCall ? Colors.amber : Colors.grey),
                    ),
                    Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                          color: isVideoCall ? Colors.amber : Colors.grey),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVideoCall = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Audio Call',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: isVideoCall ? Colors.grey : Colors.amber),
                    ),
                    Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                          color: isVideoCall ? Colors.grey : Colors.amber),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 105,
                  width: 318,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 235),
                    child: Image.asset(
                      'assets/1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Icon(Icons.notification_add),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Follow'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Icon(Icons.message),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Message'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Icon(Icons.thumb_up),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Favourite'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                  'This is a sample paragraph of text that you can replace with your own content. It could be a description, some instructions, or any other information that you would like to display here.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ))),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 167),
                child: Text(
                  'Classes Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  'Monday 17 August 2024',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  'Classes timing is 3:00 Pm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 155),
                child: Text(
                  'Flutter learning time ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  'Junior flutter developer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

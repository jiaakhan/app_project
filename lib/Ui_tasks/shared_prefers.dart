import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefers extends StatefulWidget {
  const SharedPrefers({super.key});

  @override
  State<SharedPrefers> createState() => _SharedPrefersState();
}

class _SharedPrefersState extends State<SharedPrefers> {
  TextEditingController stringController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: stringController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: stringController.text,
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                print('This is string Controller $stringController.text');
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString('key', stringController.text);
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: Text('Use data ')),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              final String? storevalue = prefs.getString('key');
              print('show the store value $storevalue ');
            },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Text('Show data ')),
            ),
          )
        ],
      ),
    );
  }
}

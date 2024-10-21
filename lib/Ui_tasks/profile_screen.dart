import 'package:demo_app/Ui_tasks/update_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/download (3) - Copy.jpeg'),
            ),
            SizedBox(height: 20),

            // Name
            Text(
              'Jane Cooper',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10),

            // Personal Information
            Text(
              '   Email: jane.cooper@example.com',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              'Age: 29',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              'Gender: Female',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),

            SizedBox(height: 30),

            // Buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => UpdateScreen()));
              },
              child: Text('Update Profile'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text('Delete Account'),
            ),
          ],
        ),
      ),
    );
  }
}

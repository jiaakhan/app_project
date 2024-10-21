import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({
    super.key,
  });

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> todayNotifications = [
    {
      'type': 'Class Alarm',
      'description':
          'Your class will start after 15 minutes. Stay with app and take care.',
      'icon': Icons.alarm,
      'iconColor': Colors.redAccent,
      'time': '11:09 AM',
      'status': 'Pending'
    },
    {
      'type': 'Class Confirmed',
      'description':
          'Class confirmed Adam smith Call will be held at 11:09 AM | 26 Mar 22',
      'icon': Icons.check_circle,
      'iconColor': Colors.blue,
      'time': '11:09 AM',
      'status': 'Confirmed'
    },
  ];

  final List<Map<String, dynamic>> yesterdayNotifications = [
    {
      'type': 'Class Confirmed',
      'description':
          'Class confirmed Adam smith Call will be held at 11:09 AM | 26 Mar 22',
      'icon': Icons.check_circle,
      'iconColor': Colors.blue,
      'time': '11:09 AM',
      'status': 'Confirmed'
    },
  ];

  final List<Map<String, dynamic>> olderNotifications = [
    {
      'type': 'Class Alarm',
      'description':
          'Your class will start after 15 minutes. Stay with app and take care.',
      'icon': Icons.alarm,
      'iconColor': Colors.redAccent,
      'time': '11:09 AM',
      'status': 'Pending'
    },
  ];

  final List<Map<String, dynamic>> anotherOlderNotification = [
    {
      'type': 'Class Confirmed',
      'description':
          'Your class will start after 15 minutes. Stay with app and take care.',
      'icon': Icons.alarm,
      'iconColor': Colors.redAccent,
      'time': '11:09 AM',
      'status': 'Pending'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today Notifications
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Today, March 25 2022',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListView.builder(
              itemCount: todayNotifications.length,
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling inside ListView
              itemBuilder: (context, index) {
                return buildNotificationCard(todayNotifications[index]);
              },
            ),

            // Yesterday Notifications
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Yesterday, March 24 2022',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListView.builder(
              itemCount: yesterdayNotifications.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildNotificationCard(yesterdayNotifications[index]);
              },
            ),

            // Older Notifications
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Monday, March 23 2022',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListView.builder(
              itemCount: olderNotifications.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildNotificationCard(olderNotifications[index]);
              },
            ),

            // Another Older Notifications
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Older Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListView.builder(
              itemCount: anotherOlderNotification.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildNotificationCard(anotherOlderNotification[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotificationCard(Map<String, dynamic> notification) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: notification['iconColor'].withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                notification['icon'],
                color: notification['iconColor'],
                size: 30,
              ),
            ),
            SizedBox(width: 16),
            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification['type'],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    notification['description'],
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    notification['time'],
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

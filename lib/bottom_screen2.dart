import 'package:flutter/material.dart';

class BottomScreen2 extends StatefulWidget {
  const BottomScreen2({super.key});

  @override
  State<BottomScreen2> createState() => _BottomScreen2State();
}

class _BottomScreen2State extends State<BottomScreen2> {
  int currentindex = 0;

  _changeTab(index) {
    setState(() {
      currentindex = index;
    });
  }

  List screens = [
    Home(),
    Notifications(),
    Center(child: Text('History')),
    Center(child: Text('Profile'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: const [
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

class Notifications extends StatefulWidget {
  const Notifications({
    super.key,
  });

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> Names = [
    'Lolla Smith',
    'Jane Cooper',
    'Arlene McCoy',
    'Adam Smith'
  ];
  List<String> images = [
    'assets/1.jpeg',
    'assets/download (3) - Copy.jpeg',
    'assets/download (4) - Copy.jpeg',
    'assets/images (6).jpeg'
  ];
  List<String> times = ['11:39 AM', '11:39 AM', '11:00 PM', '11:00 AM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Center(
          child: Text(
            'English TalkE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // 'Classes' Text is above the TabBar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Classes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),

          TabBar(
            controller: _tabController,
            onTap: (index) {
              setState(() {});
            },
            tabs: [
              Tab(
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    color:
                        _tabController.index == 0 ? Colors.amber : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amber),
                  ),
                  child: Center(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        color: _tabController.index == 0
                            ? Colors.white
                            : Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    color:
                        _tabController.index == 1 ? Colors.amber : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amber),
                  ),
                  child: Center(
                    child: Text(
                      "Past",
                      style: TextStyle(
                        color: _tabController.index == 1
                            ? Colors.white
                            : Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.transparent,
          ),
          SizedBox(height: 10),

          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 130),
                      child: Text(
                        'Tomorrow March 27 2022',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: Names.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Names[index],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Video Call - Scheduled',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        times[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 135),
                      child: Text(
                        'Today March 26 2022',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: Names.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Names[index],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Video Call - Scheduled',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        times[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Center(child: Text('Past Classes')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

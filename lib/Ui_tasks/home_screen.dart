import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool currentclass = true;
  void changeindex(bool value) {
    setState(() {
      currentclass = value;
    });
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
    return SafeArea(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h),
          Text(
            'English TalkE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'poppins',
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15.h),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Classes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'poppins'),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    changeindex(true);
                  },
                  child: Container(
                    height: 38.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: currentclass ? Colors.amber : Colors.white,
                        border: Border.all(
                            color: currentclass ? Colors.white : Colors.amber),
                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                    child: Center(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: 'poppins',
                            color: currentclass ? Colors.white : Colors.amber),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    changeindex(false);
                  },
                  child: Container(
                    height: 38.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: currentclass ? Colors.white : Colors.amber,
                        border: Border.all(
                            color: currentclass ? Colors.amber : Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                    child: Center(
                      child: Text(
                        'Past',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: 'poppins',
                            color: currentclass ? Colors.amber : Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          currentclass
              ? Expanded(
                  child: ListView.builder(
                    itemCount: Names.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            index == 0
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, right: 170),
                                    child: Text(
                                      'Tomorrow,Oct 20 2024',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                : index == 3
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 200),
                                        child: Text(
                                          'Today,Oct 19 2024',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      )
                                    : SizedBox(
                                        height: 0,
                                        width: 0,
                                      ),
                            Container(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.r),
                                      topLeft: Radius.circular(10.r),
                                    ),
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    ),
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
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Video Call',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: '   -Schedule',
                                            style:
                                                TextStyle(color: Colors.teal)),
                                      ])),
                                      Text(
                                        times[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: Names.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            index == 0
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, right: 170),
                                    child: Text(
                                      'Tomorrow,Oct 20 2024',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                : index == 3
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 200),
                                        child: Text(
                                          'Today,Oct 19 2024',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      )
                                    : SizedBox(
                                        height: 0,
                                        width: 0,
                                      ),
                            Container(
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        bottomLeft: Radius.circular(10.r)),
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    ),
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
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: 'video Call',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: '  - Schedule',
                                            style:
                                                TextStyle(color: Colors.blue)),
                                      ])),
                                      Text(
                                        times[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({
    super.key,
  });

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool currentclass = true;
  void changeindex(bool value) {
    setState(() {
      currentclass = value;
    });
  }

  List<String> Names = [
    'Jane Cooper',
    'Arlene McCoy',
    'Lolla Smith',
    'Adam Smith'
  ];
  List<String> images = [
    'assets/1.jpeg',
    'assets/download (3) - Copy.jpeg',
    'assets/download (4) - Copy.jpeg',
    'assets/images (6).jpeg'
  ];
  List<String> times = [
    '11:00 AM   11:30 AM',
    '11:00 AM   11:30 AM',
    '9:00 PM   9:30 AM',
    '9:00 PM   9:30 AM'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15.h),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'History',
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
                    height: currentclass ? 45.h : 38.h,
                    width: currentclass ? 100.w : 200.w,
                    decoration: BoxDecoration(
                        color: currentclass ? Colors.amber : Colors.white,
                        border: Border.all(
                            color: currentclass ? Colors.white : Colors.amber),
                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                    child: Center(
                      child: Text(
                        'Video Call',
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
                    height: currentclass ? 45.h : 38.h,
                    width: currentclass ? 200.w : 100.w,
                    decoration: BoxDecoration(
                        color: currentclass ? Colors.white : Colors.amber,
                        border: Border.all(
                            color: currentclass ? Colors.amber : Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                    child: Center(
                      child: Text(
                        'Video Call',
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
                                        bottom: 10, right: 260),
                                    child: Text(
                                      'Today',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                : index == 2
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 170),
                                        child: Text(
                                          'Yesterday,Oct 19 2024',
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
                                            text: '  - Completed',
                                            style:
                                                TextStyle(color: Colors.teal)),
                                      ])),
                                      Text(
                                        times[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 28,
                                  )
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
                                      'Today',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )
                                : index == 2
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 200),
                                        child: Text(
                                          'Yesterday,Oct 19 2024',
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
                                            text: 'Video Call',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: '  - Completed',
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
                ),
        ],
      ),
    ));
  }
}

import 'package:demo_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabarScreen extends StatefulWidget {
  const TabarScreen({super.key});

  @override
  State<TabarScreen> createState() => _TabarScreenState();
}

class _TabarScreenState extends State<TabarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 13, 100, 16),
            title: Text(
              'Weight Tracker',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'STATISTICS',
                    icon: Icon(Icons.show_chart),
                  ),
                  Tab(text: 'HISTORY', icon: Icon(Icons.history)),
                ]),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 234, 231, 231)
                                    .withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ]),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '57.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 13, 100, 16),
                                    fontSize: 35.sp,
                                  )),
                              TextSpan(
                                  text: '  kg',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'poppins',
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                  ))
                            ])),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Current Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'poppins',
                                fontSize: 15.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 234, 231, 231)
                                    .withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ]),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '-3.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 13, 100, 16),
                                    fontSize: 35.sp,
                                  )),
                              TextSpan(
                                  text: '  kg',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'poppins',
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                  ))
                            ])),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Progress done',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.sp,
                                  fontFamily: 'poppins'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 150.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 234, 231, 231)
                                            .withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ]),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '-3.0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 13, 100, 16),
                                        fontSize: 35.sp,
                                      )),
                                  TextSpan(
                                      text: '  kg',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                      ))
                                ])),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Last week',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w800,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 234, 231, 231)
                                            .withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ]),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '-3.0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 13, 100, 16),
                                        fontSize: 35.sp,
                                      )),
                                  TextSpan(
                                      text: '  kg',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                      ))
                                ])),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Last months',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 234, 231, 231)
                                    .withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ]),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '57.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 13, 100, 16),
                                    fontSize: 35.sp,
                                  )),
                              TextSpan(
                                  text: '  kg',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                  ))
                            ])),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Current Weight',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 234, 231, 231)
                                    .withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ]),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '-3.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 13, 100, 16),
                                    fontSize: 35.sp,
                                  )),
                              TextSpan(
                                  text: '  kg',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                  ))
                            ])),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Progress done',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.sp,
                                  fontFamily: 'poppins'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 150.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 234, 231, 231)
                                            .withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ]),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '-3.0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 13, 100, 16),
                                        fontSize: 35.sp,
                                      )),
                                  TextSpan(
                                      text: '  kg',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'poppins',
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                      ))
                                ])),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Last week',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 234, 231, 231)
                                            .withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ]),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '-3.0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 13, 100, 16),
                                        fontSize: 35.sp,
                                      )),
                                  TextSpan(
                                      text: '  kg',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'poppins',
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                      ))
                                ])),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Last months',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

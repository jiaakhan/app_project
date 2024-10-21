import 'package:demo_app/Ui_tasks/bottom_naviga.dart';
import 'package:demo_app/Ui_tasks/shared_prefers.dart';
import 'package:demo_app/Ui_tasks/splash_screen.dart';
import 'package:demo_app/bottom_screen.dart';
import 'package:demo_app/bottom_screen2.dart';
import 'package:demo_app/listui_screen.dart';
import 'package:demo_app/screen1.dart';
import 'package:demo_app/tabar_screen.dart';
import 'package:demo_app/ui%20screen.dart';
import 'package:demo_app/ui10_screen.dart';
import 'package:demo_app/ui11_screen.dart';
import 'package:demo_app/ui12_screen.dart';
import 'package:demo_app/ui2_screen.dart';
import 'package:demo_app/ui3_screen.dart';
import 'package:demo_app/ui4_screen.dart';
import 'package:demo_app/ui5_screen.dart';
import 'package:demo_app/ui6_screen.dart';
import 'package:demo_app/ui7_screen.dart';
import 'package:demo_app/ui8_screen.dart';
import 'package:demo_app/ui_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: SharedPrefers());
  }
}




// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: TabarScreen(),
//     );
//   }
// }

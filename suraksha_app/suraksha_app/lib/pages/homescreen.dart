import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_app/pages/screens/aleartscreen.dart';
import 'package:suraksha_app/pages/screens/mainhomescreen.dart';
import 'package:suraksha_app/pages/screens/profile/readprofile.dart';
import 'package:suraksha_app/pages/screens/registration/report.dart';
import 'package:suraksha_app/pages/screens/sos/sos2.dart';
// import 'package:suraksha_app/pages/screens/sosscreen.dart';
import 'package:suraksha_app/utils/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;

  getScreen(index) {
    if (index == 0) {
      return MainHomeScreen();
    } else if (index == 1) {
      return AleartScreen();
    } else if (index == 2) {
      // return SosScreen();
      return Sos2Screen();
    } else if (index == 3) {
      return ReportScreen();
    } else {
      return ProfileReadScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        height: MediaQuery.sizeOf(context).height * 0.06,
        index: index,
        buttonBackgroundColor: ColorScheme.of(context).onSurface,
        color: ColorScheme.of(context).onSurface,
        backgroundColor: Colors.transparent,
        onTap: (index) => setState(() {
          this.index = index;
        }),
        items: [
          Icon(Icons.home, color: whiteColor),
          Icon(Icons.add_alert, color: whiteColor),
          Icon(Icons.sos_outlined, color: whiteColor),
          Icon(Icons.report, color: whiteColor),
          Icon(Icons.people, color: whiteColor),
        ],
      ),
      // BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: index,
      //   selectedItemColor: ColorScheme.of(context).onSurface,
      //   backgroundColor: Colors.white,
      //   unselectedItemColor: Colors.grey.shade700,
      //   onTap: (value) {
      //     setState(() {
      //       index = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Alert'),
      //     BottomNavigationBarItem(
      //       icon: Stack(
      //         children: [
      //           Container(color: const Color.fromARGB(255, 102, 169, 195)),
      //         ],
      //       ),
      //       label: 'SOS',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Report'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.verified_rounded),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      backgroundColor: whiteColor,
      body: getScreen(index),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suraksha_app/pages/screens/ambulancescreen.dart';
import 'package:suraksha_app/pages/screens/hospitalscreen.dart';
import 'package:suraksha_app/pages/screens/medicalstorescreen.dart';
import 'package:suraksha_app/pages/screens/policescreen.dart';
import 'package:suraksha_app/pages/screens/registration/volunteerregistration.dart';
import 'package:suraksha_app/pages/screens/volunteers.dart';
import 'package:suraksha_app/utils/colors.dart';
import 'package:suraksha_app/utils/images.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: MediaQuery.sizeOf(context).height * 0.19,
                backgroundColor: ColorScheme.of(context).onSurface,
                title: Column(
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Image.asset(
                      spalshImage,
                      height: MediaQuery.sizeOf(context).height * 0.132,
                      width: MediaQuery.sizeOf(context).width,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10,
                        bottom: 8,
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextField(
                          // scrollPadding: EdgeInsets.only(bottom: 10),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25,
                        top: 10,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        // height: MediaQuery.sizeOf(context).height * 0.17,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Color(0xFF008D98),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Nearby help available\n  (Chowraha nearby)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Locate yourself for help',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              // height: MediaQuery.sizeOf(context).height * 0.055,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: WidgetStateProperty.all(3),
                                  backgroundColor: WidgetStateProperty.all(
                                    ColorScheme.of(context).onSurface,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Locate',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 25.0,
                        right: 25,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 8),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Register Yourself as Volunteer',
                              style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 18,
                                color: Color.fromARGB(255, 103, 103, 103),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02,
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              // height: MediaQuery.sizeOf(context).height * 0.055,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: WidgetStateProperty.all(3),
                                  backgroundColor: WidgetStateProperty.all(
                                    ColorScheme.of(context).onSurface,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          VolunteerRegistrationScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.003),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20,
                        top: 10,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        // height: MediaQuery.sizeOf(context).height * 0.34,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HospitalsScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    // height: MediaQuery.sizeOf(context).height * 0.15,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.grey.shade600,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.005,
                                        ),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            'assets/icons/hospitalicon.svg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          'Hospitals',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: ColorScheme.of(
                                              context,
                                            ).onSurface,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PoliceScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    // height: MediaQuery.sizeOf(context).height * 0.15,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.grey.shade600,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.005,
                                        ),
                                        SizedBox(
                                          // height:
                                          //     MediaQuery.sizeOf(context).height *
                                          //     0.085,
                                          child: Image.asset(
                                            'assets/icons/Police station.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          'Police station',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: ColorScheme.of(
                                              context,
                                            ).onSurface,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MedicalStoreScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    // height: MediaQuery.sizeOf(context).height * 0.15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.grey.shade600,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.005,
                                        ),
                                        SizedBox(
                                          // height:
                                          //     MediaQuery.sizeOf(context).height *
                                          //     0.085,
                                          child: SvgPicture.asset(
                                            'assets/icons/medical store icon.svg',

                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          'Medical Stores',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: ColorScheme.of(
                                              context,
                                            ).onSurface,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AmbulanceScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    // height: MediaQuery.sizeOf(context).height * 0.15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.grey.shade600,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.005,
                                        ),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            'assets/icons/ambulance icon.svg',
                                            height:
                                                MediaQuery.sizeOf(
                                                  context,
                                                ).height *
                                                0.095,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          'Ambulance',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: ColorScheme.of(
                                              context,
                                            ).onSurface,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VolunteersScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.43,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.grey.shade600,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                          0.005,
                                    ),
                                    SizedBox(
                                      // height:
                                      //     MediaQuery.sizeOf(context).height * 0.085,
                                      child: SvgPicture.asset(
                                        'assets/icons/volunteer icon.svg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      'Volunteer help',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: ColorScheme.of(
                                          context,
                                        ).onSurface,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.08,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Positioned(
          //   top: 50,
          //   left: 15,
          //   child: InkWell(
          //     onTap: () {},
          //     child: Container(
          //       height: 20,
          //       width: 20,
          //       color: Colors.white,
          //       child: Image.asset('assets/icons/traffic_jam.png'),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

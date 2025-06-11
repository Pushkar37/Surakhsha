import 'package:flutter/material.dart';
import 'package:suraksha_app/pages/screens/profile/editprofile.dart';

class ProfileReadScreen extends StatelessWidget {
  const ProfileReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      // extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileEditScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/edit.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.01,
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
              Container(
                // height: MediaQuery.sizeOf(context).height * 0.2,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/icons/user.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Shivansh Chouhan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Container(
                // height: MediaQuery.sizeOf(context).height,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people, color: Colors.black),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Text(
                          'Personal Information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Shivansh Chouhan'),
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('xyz@gmail.com'),
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('1234567890'),
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Male'),
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Date of Birth',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('11-01-1111'),
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('123 civil Line Vidisha'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}

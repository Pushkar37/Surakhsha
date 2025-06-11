import 'package:flutter/material.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final _formkey = GlobalKey<FormState>();
  String name = '';
  String fullname = '';
  String email = '';
  String phoneNumber = '';
  // String gender = '';
  String dateOfBirth = '';
  String address = '';

  dynamic newValue;

  final items = ['Male', 'Female'];
  String? gendervalue = 'Male';

  // function
  trySubmit() {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    // print('name is : $name');
    // print('email is: $email');
    // print('phone no. :$phoneNumber');
    // print('gender : $gendervalue');
    // print('date of birth: $dateOfBirth');
    // print('address :$address');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    // height: MediaQuery.sizeOf(context).height * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 60,
                                    backgroundColor: Colors.white,
                                    child: Image.asset('assets/icons/user.png'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.01,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 120,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: 20,
                                child: Icon(Icons.photo_camera),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          // width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            key: ValueKey('name'),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Name should not be Empty';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                name = value.toString();
                              });
                            },
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
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            key: ValueKey('fullname'),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Please Enter Full Name';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                fullname = value.toString();
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Full Name',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            key: ValueKey('email'),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Please Enter Email';
                              } else if (!(value.toString().contains('@'))) {
                                return 'Invalid Email';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                email = value.toString();
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            key: ValueKey('phoneNumber'),
                            validator: (value) {
                              if (value.toString().length < 10) {
                                return 'Enter 10 digit phone number';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                phoneNumber = value.toString();
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Phone Number',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          padding: EdgeInsets.only(left: 10, right: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              items: items.map(buildMenuItem).toList(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade300,
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey.shade600,
                              ),
                              isExpanded: true,
                              value: gendervalue,
                              dropdownColor: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              onChanged: (value) => setState(() {
                                gendervalue = value;
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Date of Birth',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            key: ValueKey('dateOfBirth'),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Enter date of birth';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              dateOfBirth = value.toString();
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Date of birth',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: TextFormField(
                            key: ValueKey('address'),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Enter Address';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              address = value.toString();
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Full address',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                  InkWell(
                    onTap: () {
                      trySubmit();
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      decoration: BoxDecoration(
                        color: Color(0xFF008D98),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
    ),
  );
}

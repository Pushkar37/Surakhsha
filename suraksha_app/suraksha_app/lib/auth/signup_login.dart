import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_app/services/functions/firebase_auth_methods.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController number = TextEditingController();

  bool isOtpSent = false;

  // singup function
  void signUpbyEmail() {
    FirebaseAuthMethods(FirebaseAuth.instance).signupWithEmailPassword(
      email: email.text.trim(),
      password: password.text,
      context: context,
    );
  }
// sign up by phone number
  void signUpbyNumber() {
    FirebaseAuthMethods(
      FirebaseAuth.instance,
    ).signUpbyPhone(number.text.trim());
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.955,
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: ColorScheme.of(context).onSurface,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: const Color.fromARGB(255, 39, 50, 94),
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.37,
                        // color: Colors.black,
                        child: Image.asset('assets/images/Login man.png'),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      if (!isOtpSent) ...[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Signup', style: TextStyle(fontSize: 32)),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.005,
                            ),
                            Text(
                              'Phone number',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.005,
                            ),
                            Container(
                              // width: MediaQuery.sizeOf(context).width * 0.90,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TextField(
                                controller: number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: 'Enter Phone number',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.all(
                                  //     Radius.circular(50),
                                  //   ),
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Enter OTP', style: TextStyle(fontSize: 15)),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.005,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TextField(
                                controller: password,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: 'Enter password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderRadius: BorderRadius.all(
                                  //     Radius.circular(50),
                                  //   ),
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],

                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.90,
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(3),
                            backgroundColor: WidgetStateProperty.all(
                              ColorScheme.of(context).onSurface,
                            ),
                          ),
                          onPressed: signUpbyNumber,
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Divider(color: Colors.grey.shade600),
                              ),
                            ),
                            Text(
                              '  or sign in with  ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Divider(color: Colors.grey.shade600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.06,
                          decoration: BoxDecoration(
                            // color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50),
                            border: BoxBorder.all(style: BorderStyle.solid),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/icons/google.png',
                                    height: 30,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.03,
                                ),
                                Text(
                                  'Sign in with Google',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

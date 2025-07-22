import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_app/auth/demo_auth.dart';
// import 'package:suraksha_app/auth/signup_login.dart';
// import 'package:suraksha_app/pages/homescreen.dart';
import 'package:suraksha_app/utils/images.dart';
import 'package:suraksha_app/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: ColorScheme.of(context).primary,
      home: SplashScreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PhoneAuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      body: Center(child: Image.asset(spalshImage)),
    );
  }
}
// confirm
import 'package:flutter/material.dart';

class LanguagePermissionScreen extends StatelessWidget {
  const LanguagePermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: ColorScheme.of(context).onSurface,
          child: Column(
            children: [
              Image.asset(
                'assets/images/main logo circular.png',
                height: MediaQuery.sizeOf(context).height * 0.4,
                width: MediaQuery.sizeOf(context).width * 0.7,
              ),

              Text(
                'Select App Language',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  decoration: BoxDecoration(
                    color: Color(0xFF008D98),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'English',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Hindi',
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorScheme.of(context).onSurface,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

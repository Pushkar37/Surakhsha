import 'package:flutter/material.dart';

class SosScreen extends StatefulWidget {
  const SosScreen({super.key});

  @override
  State<SosScreen> createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'SOS',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: ColorScheme.of(context).onSurface,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
          CircleAvatar(
            backgroundColor: ColorScheme.of(context).onSurface,
            radius: 150,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                Icon(Icons.call_outlined, color: Colors.white, size: 100),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                Text(
                  'Succesfully',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'send message and',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'location for help',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

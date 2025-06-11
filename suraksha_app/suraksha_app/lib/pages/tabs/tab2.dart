import 'package:flutter/material.dart';

class RecieveAlertScreen extends StatefulWidget {
  const RecieveAlertScreen({super.key});

  @override
  State<RecieveAlertScreen> createState() => _RecieveAlertScreenState();
}

class _RecieveAlertScreenState extends State<RecieveAlertScreen> {
  List<String> receivedAlert = [
    "Alert 1!",
    "Alert 2!",
    "Alert 3!",
    "Alert 4!",
    "Alert 5!",
  ];
  List<String> receiveTime = ["10:45", "10:45", "10:45", "10:45", "10:45"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: receivedAlert.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade500, blurRadius: 5),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    receivedAlert[index],
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    receiveTime[index],
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

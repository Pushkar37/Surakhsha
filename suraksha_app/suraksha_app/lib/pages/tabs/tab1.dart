import 'package:flutter/material.dart';

class SendAlertScreen extends StatefulWidget {
  const SendAlertScreen({super.key});

  @override
  State<SendAlertScreen> createState() => _SendAlertScreenState();
}

class _SendAlertScreenState extends State<SendAlertScreen> {
  List<String> sendMessage = [
    "Sos alert send 1",
    "Sos alert send 2",
    "Sos alert send 3",
    "Sos alert send 4",
    "Sos alert send 5",
  ];
  List<String> sendTime = ["10:45", "10:45", "10:45", "10:45", "10:45"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: sendMessage.length,
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
                    sendMessage[index],
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(sendTime[index], style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

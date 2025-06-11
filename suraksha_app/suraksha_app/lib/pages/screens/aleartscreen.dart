import 'package:flutter/material.dart';
import 'package:suraksha_app/pages/tabs/tab1.dart';
import 'package:suraksha_app/pages/tabs/tab2.dart';

class AleartScreen extends StatefulWidget {
  const AleartScreen({super.key});

  @override
  State<AleartScreen> createState() => _AleartScreenState();
}

class _AleartScreenState extends State<AleartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
            TabBar(
              padding: EdgeInsets.only(left: 30, right: 30),
              dividerColor: Colors.grey.shade700,
              indicatorAnimation: TabIndicatorAnimation.elastic,
              splashBorderRadius: BorderRadius.circular(10),
              unselectedLabelColor: Colors.grey.shade600,

              tabs: [
                // tab 1
                Tab(child: Text('Send Alerts', style: TextStyle(fontSize: 18))),
                // tab 2
                Tab(
                  child: Text(
                    'Received Alerts',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [SendAlertScreen(), RecieveAlertScreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

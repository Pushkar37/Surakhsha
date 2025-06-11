import 'package:flutter/material.dart';

class PoliceScreen extends StatefulWidget {
  const PoliceScreen({super.key});

  @override
  State<PoliceScreen> createState() => _PoliceScreenState();
}

class _PoliceScreenState extends State<PoliceScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> vidishaChouraha = [
      "Kamatapar Bhopal-Vidisha Bypass",
      "Eidgah Intersection",
      "Dholkhedi Intersection",
      "Kariyya Intersection",
      "Miyaganj Junction",
      "Nayagaon",
      "Gudhe",
      "Ambanagar Intersection",
      "Mehlua Intersection",
      "Bungalow Intersection",
      "Pipal Dhar",
      "Mahanagn Intersection",
      "Mirzapur Bypass",
      "Umarkhedi-Gulabganj Junction",
      "Bagarod Intersection",
      "Udaipur Intersection",
      "Balrampur",
      "Mureya",
      "Sironj Kuthai Bypass Intersection",
      "Rohilpura Intersection Sironj",
      "Sironj Aron Guna Bypass Junction",
      "Bheersa Junction Kuthai",
      "Bina Junction",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ColorScheme.of(context).onSurface,
                padding: EdgeInsets.only(top: 10),
                // height: MediaQuery.sizeOf(context).height * 0.21,
                // width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Text(
                      'Police Station',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 27,
                        bottom: 8,
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.filter_alt,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            hintText: 'Filter by Nearby chauraha',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.sizeOf(context).height * 1,
                padding: EdgeInsets.only(bottom: 170, left: 5, right: 5),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: vidishaChouraha.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(
                        height: MediaQuery.sizeOf(context).height * 0.065,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '  ${vidishaChouraha[index]}',
                              style: TextStyle(color: Colors.black),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.call,
                                color: ColorScheme.of(context).onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

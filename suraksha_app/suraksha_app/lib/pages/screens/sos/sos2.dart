import 'package:flutter/material.dart';
import 'package:suraksha_app/pages/screens/sos/sos3.dart';
import 'package:suraksha_app/pages/screens/sosscreen.dart';

class Sos2Screen extends StatefulWidget {
  const Sos2Screen({super.key});

  @override
  State<Sos2Screen> createState() => _Sos2ScreenState();
}

class _Sos2ScreenState extends State<Sos2Screen> {
  List<String> data = [
    "Volunteer 1",
    "Hospital 1",
    "ABC Dubey",
    "ABC",
    "ABC Sharma",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorScheme.of(context).onSurface,
                padding: EdgeInsets.only(top: 10),
                // height: MediaQuery.sizeOf(context).height * 0.21,
                // width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Text(
                      'SOS',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20,
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
                            hintText: 'Find your emergency contacts',
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
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              Center(
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorScheme.of(context).onSurface,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'SOS Contacts',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Container(
                // color: Colors.grey.shade600,
                height: MediaQuery.sizeOf(context).height * 0.41,
                padding: EdgeInsets.only(left: 5, top: 10),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        padding: EdgeInsets.only(left: 15),
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
                              data[index],
                              style: TextStyle(
                                color: ColorScheme.of(context).onSurface,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.call_outlined,
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sos3Screen()),
                  );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      width: MediaQuery.sizeOf(context).width * 0.38,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: BoxBorder.all(),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Contacts',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SosScreen()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width,

                    decoration: BoxDecoration(
                      color: ColorScheme.of(context).onSurface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Send SOS',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
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

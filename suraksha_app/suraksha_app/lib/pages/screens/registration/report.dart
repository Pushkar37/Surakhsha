import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => ReportScreenState();
}

List<String> item = [
  'No Injuries',
  'Minor Injuries',
  'Serious Injuries',
  'Critical / Fatal',
];

class ReportScreenState extends State<ReportScreen> {
  String currentValue = item[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Report an Incident",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
              Text(
                'Address',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

              Container(
                decoration: BoxDecoration(
                  // color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your address',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              Text(
                'Type of incident',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      // height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Color(0xFF008D98)),
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(blurRadius: 5, color: Colors.grey.shade600),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.005,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            child: SvgPicture.asset(
                              'assets/icons/vehicle accidenticon.svg',
                              fit: BoxFit.contain,
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text(
                            'Vehicle Accident',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      // height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF008D98), width: 2),
                        // boxShadow: [
                        //   BoxShadow(blurRadius: 5, color: Colors.grey.shade600),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.005,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            child: SvgPicture.asset(
                              'assets/icons/personal injury icon .svg',
                              fit: BoxFit.contain,
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text(
                            'Personal Injury',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      // height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF008D98), width: 2),
                        // boxShadow: [
                        //   BoxShadow(blurRadius: 5, color: Colors.grey.shade600),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            child: SvgPicture.asset(
                              'assets/icons/otherincidenticon.svg',
                              fit: BoxFit.contain,
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text(
                            'Safety Hazard ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      // height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF008D98), width: 2),
                        // boxShadow: [
                        //   BoxShadow(blurRadius: 5, color: Colors.grey.shade600),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            child: SvgPicture.asset(
                              'assets/icons/otherinjury icon .svg',
                              height: 60,
                              width: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'Other Incident',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Text(
                'Injury Type',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              ListTile(
                minTileHeight: 20,
                title: Text('No Injuries'),
                leading: Radio(
                  value: item[0],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = item[0];
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Minor Injuries'),
                minTileHeight: 20,
                leading: Radio(
                  value: item[1],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = item[1];
                    });
                  },
                ),
              ),
              ListTile(
                minTileHeight: 20,
                title: Text('Serious Injuries'),
                leading: Radio(
                  value: item[2],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = item[2];
                    });
                  },
                ),
              ),
              ListTile(
                minTileHeight: 20,
                title: Text('Critical / Fatal'),
                leading: Radio(
                  value: item[3],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = item[3];
                    });
                  },
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Text(
                'Incident Description',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 80,
                child: TextField(
                  decoration: InputDecoration(
                    hintText:
                        'Please provide a detailed description of what happened',
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // print(currentValue);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: ColorScheme.of(context).onSurface,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Report',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}

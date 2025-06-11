import 'package:flutter/material.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).onSurface,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
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
                      // child: Image.asset('assets/images/Login man.png'),
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.37,
                        // color: Colors.black,
                        child: Image.asset('assets/images/access.png'),
                      ),
                    ),
                  ],
                ),
                Container(
                  // color: Colors.grey.shade300,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.grey.shade400,
                        padding: EdgeInsets.only(right: 80),
                        child: Column(
                          children: [
                            SizedBox(
                              // height: 200,
                              height: MediaQuery.sizeOf(context).height * 0.25,
                              child: Text(
                                'Enable Location  Message And Call Access',
                                style: TextStyle(
                                  color: ColorScheme.of(context).onSurface,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              child: Text(
                                'Please provide access to your location and call for providing various advance features',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.90,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(3),
                            backgroundColor: WidgetStateProperty.all(
                              ColorScheme.of(context).onSurface,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Allow',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Maybe Later',
                            style: TextStyle(
                              fontSize: 15,
                              color: ColorScheme.of(context).onSurface,
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

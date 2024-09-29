import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(
                  "Go to home ",
                  style: GoogleFonts.abel(
                    fontSize: 23,
                  ),
                ),
                onPressed: () async {
                  // Get.to(
                  //   Home(),
                  //   fullscreenDialog: true,
                  //   transition: Transition.zoom,
                  //   duration: Duration(milliseconds: 4000),
                  //   curve: Curves.bounceInOut,
                  // Get.of go to screen but no  opto to retuen
                  // Get.offALl go to ome screen and cancel all previous screen routed
                  //Get.to(), aurguments:"Data nfrom Main");
                  // go to next screen and reciver data sent from home
                  // var data = await Get.to(const Home());
                  // print ("The recive data is data $data");
                  // Get.to(Home(), arguments: "Data from Main");
                  // );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: const Text(
                  "Back to Main",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue,
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

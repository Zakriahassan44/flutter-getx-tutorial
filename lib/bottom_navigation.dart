import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Show Bottom Sheet"),
                onPressed: () {
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          leading: Icon(Icons.nightlight_round),
                          title: Text("Dark Theme"),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

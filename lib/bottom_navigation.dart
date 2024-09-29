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
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Show Bottom Sheet"),
                onPressed: () {
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light Theme"),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          leading: const Icon(Icons.nightlight_round),
                          title: const Text("Dark Theme"),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
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

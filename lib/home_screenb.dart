import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenB extends StatelessWidget {
  const HomeScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx dialoge alert'),
              subtitle: const Text('Getx dialog alert with getx'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete chart',
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: 'Are you sure to want to delete ',
                    // textConfirm: 'yes',
                    // textCancel: 'no',
                    confirm: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('ok'),
                    ),
                    cancel: TextButton(
                      onPressed: () {},
                      child: const Text('cancel'),
                    ),
                    content: const Column(
                      children: [
                        Text('cancel'),
                        Text('cancel'),
                        Text('cancel'),
                        Text('cancel'),
                      ],
                    ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx dialoge alert'),
              subtitle: const Text('Getx dialog alert with getx'),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('light theame'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark theame'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}

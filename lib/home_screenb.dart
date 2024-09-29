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
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: 'Are you sure to want to delete ',
                    // textConfirm: 'yes',
                    // textCancel: 'no',
                    confirm: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.back();
                      },
                      child: Text('ok'),
                    ),
                    cancel: TextButton(
                      onPressed: () {},
                      child: Text('cancel'),
                    ),
                    content: Column(
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
                        leading: Icon(Icons.light_mode),
                        title: Text('light theame'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark theame'),
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

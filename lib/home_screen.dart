import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('zakria khan', 'welcome to my code',
              onTap: (snap) {},
              mainButton: TextButton(
                onPressed: () {},
                child: Text('Click'),
              ),
              icon: const Icon(Icons.add),
              backgroundColor: const Color.fromARGB(255, 54, 76, 244),
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
    );
  }
}

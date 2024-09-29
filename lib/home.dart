import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Get.back();
              // send data to privious screen must result as a name
              Get.back(result: 'This is from Home Screen ');
            },
            child: const Text(
              "Back to main",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "${Get.arguments}",
            style: const TextStyle(
              color: Colors.greenAccent,
              fontSize: 18,
            ),
          ),
        ],
      )),
    );
  }
}

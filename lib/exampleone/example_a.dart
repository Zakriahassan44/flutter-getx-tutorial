import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/exampleone/counter_controller.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  final CounterController controller = Get.put(CounterController());
  // int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 68),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
          // counter++;
          // setState(() {});
        },
      ),
    );
  }
}

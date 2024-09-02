import 'package:counter_app/counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(
            init: CounterController(),
            builder: (controller) {
              return Text(controller.count.value.toString(),
                  style: TextStyle(fontSize: 60));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  controller.reset();
                },
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

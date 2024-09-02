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
          GetBuilder(
            init: CounterController(),
            builder: (controller) {
              return Text(controller.count.toString(),
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
                onPressed: () {},
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

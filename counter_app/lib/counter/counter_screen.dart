import 'package:counter_app/counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Counter screen'),
          ),
          body: Obx(
            () {
              return Column(
                children: [
                  Text(
                      'Available:${controller.limit.value - controller.count.value}',
                      style: TextStyle(fontSize: 40)),
                  // Text(
                  //     'Earnings:${controller.count.value * controller.price.value}',
                  //     style: TextStyle(fontSize: 40)),
                  TextField(
                      decoration: InputDecoration(
                    labelText: 'Name',
                  )),
                  Text(controller.count.value.toString(),
                      style: TextStyle(fontSize: 60)),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5),
                      itemCount: controller.limit.value,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            decoration: BoxDecoration(color: Colors.yellow)),
                      ),
                    ),
                  ),
                  Text(
                      'Total Payment: ${controller.count.value * controller.price.value}'),
                  ElevatedButton(onPressed: () {}, child: Text('Book'))
                ],
              );
            },
          )),
    );
  }
}

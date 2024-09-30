import 'package:counter_app/counter/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterSettings extends StatelessWidget {
  CounterSettings({super.key});
  CounterController _controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller.txtLimit,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Limit',
            ),
          ),
          TextField(
            controller: _controller.txtPrice,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _controller.updateSettings();
                Get.to(() => CounterScreen());
              },
              child: Text('SET'))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  increment() {
    count.value++;
  }

  decrement() {
    if (count.value > 0)
      count.value -= 1;
    else
      Get.snackbar('Underflow', '-ve number not allowed',
          backgroundColor: Colors.red);
  }

  reset() {
    count.value = 0;
    update();
  }

  /*
  y=x++;
  y=++x;
   */
}

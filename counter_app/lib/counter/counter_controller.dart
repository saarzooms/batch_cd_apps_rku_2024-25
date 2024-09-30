import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  var limit = 0.obs;
  var price = 0.obs;
  TextEditingController txtLimit = TextEditingController();
  TextEditingController txtPrice = TextEditingController();
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

  updateSettings() {
    try {
      limit.value = int.parse(txtLimit.text);
      price.value = int.parse(txtPrice.text);
      Get.snackbar("Success", "updated Successfully settings");
    } catch (e) {}
  }
}

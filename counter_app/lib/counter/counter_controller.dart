import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;
  increment() {
    count++;
    update();
  }

  decrement() {
    count -= 1;
    update();
  }

  reset() {
    count = 0;
    update();
  }

  /*
  y=x++;
  y=++x;
   */
}

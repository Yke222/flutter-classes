import 'package:get/get_state_manager/get_state_manager.dart';

class FruitController extends GetxController {
  String fruit = 'N/A';
  int counter = 0;

  void setFruit(String fruit) {
    this.fruit = fruit;
    update();
  }

  void increment() { 
    counter++;
    update();
  }
}

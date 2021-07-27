import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_example/controller/fruitController.dart';

class GetXExample extends StatefulWidget {
  const GetXExample({
    Key? key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GetXExample> {
  final FruitController fruitController = Get.put(FruitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<FruitController>(
          builder: (_) {
            return Center(
              child: Text('Current fruit: ${fruitController.fruit}'),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FruitSelectorButton(
              fruit: 'Apple',
              controller: fruitController,
              bgColor: Colors.redAccent,
            ),
            FruitSelectorButton(
              fruit: 'Orange',
              controller: fruitController,
              bgColor: Colors.orangeAccent,
            ),
            FruitSelectorButton(
              fruit: 'Banana',
              controller: fruitController,
              bgColor: Colors.yellowAccent,
            ),
            FruitSelectorButton(
              fruit: 'Kiwi',
              controller: fruitController,
              bgColor: Colors.greenAccent,
            ),
            FruitSelectorButton(
              fruit: 'Watermelon',
              controller: fruitController,
              bgColor: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class FruitSelectorButton extends StatelessWidget {
  const FruitSelectorButton({
    Key? key,
    required this.fruit,
    required this.controller,
    this.bgColor = Colors.blue,
  }) : super(key: key);

  final String fruit;
  final Color bgColor;
  final FruitController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.setFruit(fruit);
      },
      style: ElevatedButton.styleFrom(primary: bgColor),
      child: Text(
        fruit,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

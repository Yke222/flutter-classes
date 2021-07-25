import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({
    Key? key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SetStateExample> {
  String title = 'Current fruit:';
  String fruit = 'unknown';

  void callback({required String newFruit}) {
    setState(() {
      fruit = newFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('${'$title'} ${'$fruit'}')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FruitSelectorButton(fruit: 'Apple', callback: callback),
            FruitSelectorButton(fruit: 'Orange', callback: callback),
            FruitSelectorButton(fruit: 'Banana', callback: callback),
            FruitSelectorButton(fruit: 'Kiwi', callback: callback),
            FruitSelectorButton(fruit: 'Maça', callback: callback),
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
    required this.callback,
  }) : super(key: key);

  final String fruit;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback(newFruit: fruit);
      },
      child: Text(fruit),
    );
  }
}

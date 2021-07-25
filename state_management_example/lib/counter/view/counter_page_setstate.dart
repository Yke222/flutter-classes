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

  void callback(newFruit) {
    setState(() {
      fruit = newFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${'$title'} ${'$fruit'}'),
      ),
      body: Center(
        child: Column(
          children: [
            FruitSelectorButton(fruit: 'Apple', callback: callback),
            FruitSelectorButton(fruit: 'Orange', callback: callback),
            FruitSelectorButton(fruit: 'Banana', callback: callback),
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
        callback(fruit);
      },
      child: Text(fruit),
    );
  }
}

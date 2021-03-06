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
  String fruit = 'N/A';

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
            FruitSelectorButton(
              fruit: 'Apple',
              callback: callback,
              bgColor: Colors.redAccent,
            ),
            FruitSelectorButton(
              fruit: 'Orange',
              callback: callback,
              bgColor: Colors.orangeAccent,
            ),
            FruitSelectorButton(
              fruit: 'Banana',
              callback: callback,
              bgColor: Colors.yellowAccent,
            ),
            FruitSelectorButton(
              fruit: 'Kiwi',
              callback: callback,
              bgColor: Colors.greenAccent,
            ),
            FruitSelectorButton(
              fruit: 'Watermelon',
              callback: callback,
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
    required this.callback,
    this.bgColor = Colors.blue,
  }) : super(key: key);

  final String fruit;
  final Function callback;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback(newFruit: fruit);
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

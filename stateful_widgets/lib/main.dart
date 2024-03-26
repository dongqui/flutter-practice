import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void onClick() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: Column(
          children: [
            const Text('Click button'),
            Text('$count'),
            IconButton(
              onPressed: onClick,
              icon: const Icon(Icons.add_box_rounded),
            )
          ],
        )),
      ),
    );
  }
}

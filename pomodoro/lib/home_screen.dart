import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: Center(
                child: Text(
                  '$totalSeconds',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
            ),
            Flexible(
                flex: 4,
                child: Center(
                  child: IconButton(
                    onPressed: onStartPressed,
                    iconSize: 99,
                    color: Theme.of(context).cardColor,
                    icon: const Icon(Icons.play_circle_outlined),
                  ),
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Theme.of(context).cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pomodoros',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .color),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}

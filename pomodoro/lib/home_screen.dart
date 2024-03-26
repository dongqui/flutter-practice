import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  '25:00',
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
                    onPressed: () {},
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

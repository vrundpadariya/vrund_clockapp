import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double secDiv = 3 * pi / 2;
  int secCount = 0;
  double minuteDiv = 3 * pi / 2;
  int minCount = 0;
  double hourDiv = 3 * pi / 2;
  int hourCount = 0;

  timer() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          secDiv += pi / 30;
          secCount++;
          if (secCount == 60) {
            secCount = 0;
            minuteDiv += pi / 30;
            minCount++;
          }
          if (minCount == 60) {
            hourDiv += pi / 6;
            minCount = 0;
          }
        });
      },
    );
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 800,
              child: Container(
                width: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Stack(
                  children: [
                    Transform.rotate(
                      angle: secDiv,
                      child: const Divider(
                        color: Colors.black,
                        indent: 150,
                        endIndent: 25,
                      ),
                    ),
                    Transform.rotate(
                      angle: minuteDiv,
                      child: const Divider(
                        color: Colors.black,
                        indent: 150,
                        endIndent: 35,
                        thickness: 2.5,
                      ),
                    ),
                    Transform.rotate(
                      angle: hourDiv,
                      child: const Divider(
                        color: Colors.black,
                        indent: 150,
                        endIndent: 45,
                        thickness: 3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.grey,
            child: const Icon(
              Icons.add,
              color: Colors.black87,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.black87,
                      size: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.timer_sharp,
                      color: Colors.black87,
                      size: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.timer,
                      color: Colors.black87,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

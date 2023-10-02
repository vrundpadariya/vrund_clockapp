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

  timerr() async {
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
    timerr();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 800,
            child: Container(
              width: 300,
             alignment: Alignment.center,
             decoration: const BoxDecoration(
               shape: BoxShape.circle,
               color: Colors.grey,

             ),
              child:  Stack(

                children: [
                  Transform.rotate(
                    angle: 3*pi/2,
                    child:  const Divider(
                      color: Colors.black,
                      indent: 150,
                      endIndent: 25,
                    ),
                  ),
                  Transform.rotate(
                    angle: 3*pi/2,
                    child:  const Divider(
                      color: Colors.black,
                      indent: 150,
                      endIndent: 35,
                      thickness: 2.5,
                    ),
                  ),
                  Transform.rotate(
                    angle: 3*pi/2,
                    child:  const Divider(
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
          const Row(
        children: [

        ],
          )

        ],
      ),
    );
  }
}

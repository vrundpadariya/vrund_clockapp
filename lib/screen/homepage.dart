import 'package:flutter/material.dart';
import 'dart:math';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  timer(){
    Future.delayed(Duration(seconds: 1,));
  }


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Container(
            alignment: Alignment.center,
            height: 300,
         width: 300,
         decoration:  const BoxDecoration(
           shape: BoxShape.circle,

         ),
          child:   Stack(
            children: [
              Transform.rotate(
                angle: pi/2,
                child: Divider(
                  color: Colors.black,
                   endIndent: 30,
                  indent: 150,

                ),
              )
            ],
          )
       ),
      )
    );
  }
}

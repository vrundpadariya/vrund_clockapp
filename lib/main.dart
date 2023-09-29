import 'package:clock_app/screen/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
       theme: ThemeData(useMaterial3: true),
       home: MyApp(),
  ),
  );
}
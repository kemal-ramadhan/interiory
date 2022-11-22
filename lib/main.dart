import 'package:flutter/material.dart';
import 'package:interiory/Pages/detail.dart';
import 'package:interiory/Pages/onboard_one.dart';
import 'Pages/SplashScreen.dart';
import 'Pages/Bottom_bar.dart';

void main() {
  runApp(
      // ignore: prefer_const_constructors
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
}
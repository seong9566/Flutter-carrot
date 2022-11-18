// ignore_for_file: prefer_const_constructors

import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/main_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Carrot_Market_ui",
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: MainPage(),
    );
  }
}

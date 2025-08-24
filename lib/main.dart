import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_color.dart';
import 'package:news_app_learning_dio/features/home_screen/home_screen.dart';

//213756a7eaa7444b88250277b5139a5d
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColor.whiteColor),
      home: HomeScreen(),
    );
  }
}

import 'package:advanced_flutter/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); //Default constructor

  MyApp._internal(); //Private named constructor

  int appState = 0;

  static final MyApp instance = MyApp._internal(); //Single instance -- singleton

  factory MyApp() => instance; //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}

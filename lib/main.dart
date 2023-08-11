import 'package:flutter/material.dart';
import 'package:flutterwebcustomcomponent/widget/custom_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CustomButton(btnLabel: "Hello Button", btnColor: Colors.blue),
      home: Scaffold(
        body: CustomDropDown(list: ["One", "Two", "Three"]),
      ),
    );
  }
}

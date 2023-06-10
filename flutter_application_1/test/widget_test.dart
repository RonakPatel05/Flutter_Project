// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "AWESOME APP",
    home: HomePage(),
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  ignore: prefer_typing_uninitialized_variables
    return Scaffold(
      appBar: AppBar(
        title: Text("AWESOME APP"),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(child: Text("FLUTTER")),
      ),
    );
  }
}

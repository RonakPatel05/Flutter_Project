import 'package:flutter/material.dart';
// import 'package:flutter_application_1/main.dart';

class Homepage extends StatelessWidget {
  final int day = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $day of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

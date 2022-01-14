import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              "hight is ${MediaQuery.of(context).size.height}, width is ${MediaQuery.of(context).size.width}",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

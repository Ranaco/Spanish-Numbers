// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  var run = MaterialApp(
    title: 'first App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App!',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.flutter_dash_rounded,
          color: Colors.white,
        ),
        elevation: 20,
        actions: const <Widget>[Icon(Icons.ac_unit)],
      ),
    ),
  );
  runApp(run);
}

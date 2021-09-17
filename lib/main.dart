// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'first App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var counter = 0;
  var counter2 = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "sies",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  List englishNumbers = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
  ];

  String defaultText = "Spanish numbers";
  String englishText = "English numbers";

  displaySNumbers() {
    setState(() {
      defaultText = spanishNumbers[counter];
      englishText = englishNumbers[counter];
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My stateful app"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  defaultText,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  englishText,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  onPressed: displaySNumbers,
                  child: Text('Call Numbers'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ],
            ),
          ),
        ));
  }
}

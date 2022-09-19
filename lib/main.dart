import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceValue = 5;
  int rightDiceValue = 2;
  getDiceValue(){
    leftDiceValue = Random().nextInt(6) + 1;
    rightDiceValue = Random().nextInt(6) + 1;

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text("Luck Test Dice App"),),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        getDiceValue();

                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$leftDiceValue.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        getDiceValue();
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$rightDiceValue.png'),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [Center(child: Text("Develop by ASHIK", style: TextStyle(fontSize: 20),)),],
      ),
    );
  }
}

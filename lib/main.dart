import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice=1;
  int rightDice=2;

  //function



  void dice(){
    leftDice=Random().nextInt(6)+1;
    rightDice=Random().nextInt(6)+1;
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('DiceApp'),
          backgroundColor: Colors.red,
        ),


        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,


            children: [
              TextButton(
                onPressed: () {
                  setState(() {dice();
                  leftDice=Random().nextInt(6)+1;

                  });
                },
                child: Image.asset(
                  '/home/ksb/AndroidStudioProjects/diceapp/image/dice$leftDice.png',
                  height: 200,
                  scale: 2.5,
                ),
              ),
              SizedBox(width: 20),




              TextButton(
                onPressed: (){
                  setState(() {dice();
                  rightDice=Random().nextInt(6)+1;
                  });
                }
                ,
                child: Image.asset(
                  '/home/ksb/AndroidStudioProjects/diceapp/image/dice$rightDice.png',
                  height: 200,
                  scale: 2.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.purple,
    title: Text("Dice Roller"),
    ),
    body: DiceRoller(),

    )
    );
  }
}


class DiceRoller extends StatefulWidget {

  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var leftdie = 1;
  var rightdie =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftdie = Random().nextInt(6)+1;
                    rightdie = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset("assets/images/dice-six-faces-$leftdie.png"),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftdie = Random().nextInt(6)+1;
                    rightdie = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset("assets/images/dice-six-faces-$rightdie.png"),
              )
          ),
        ],
      ),
    );
  }
}


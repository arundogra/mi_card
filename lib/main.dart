import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade500,
        appBar: AppBar(
          title: Text("Just Roll"),
          backgroundColor: Colors.teal.shade500,
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int diceno1 = 1;
  int diceno2 = 2;

   RollDice () {
    return setState(() {
      diceno1 = Random().nextInt(5) +1;
      diceno2 = Random().nextInt(5) +1;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
          children: [
            Expanded(
               child: FlatButton(
                 onPressed: () {
                   setState(() {
                     RollDice();
                   });
                 },
                 child: Image.asset(
                     'assets/dice$diceno1.png'
                 ),
               ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () { RollDice(); },
                    child: Image.asset(
                        'assets/dice$diceno2.png'
                    ),
                ),
            ),
          ],
      ),
    );
  }
}


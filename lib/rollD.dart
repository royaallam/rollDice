import 'dart:math';
import 'package:flutter/material.dart';

class RollDiceApp extends StatefulWidget {
  const RollDiceApp({super.key});

  @override
  State<RollDiceApp> createState() => _RollDiceAppState();
}

class _RollDiceAppState extends State<RollDiceApp> {
  final randomizer = Random();
  var currentDiceRoll = 2;
  var currentTwoDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentTwoDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.yellow]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/dice-$currentDiceRoll.png", width: 200),
              SizedBox(height: 10),
              Image.asset("images/dice-$currentTwoDiceRoll.png", width: 200),
              TextButton(
                onPressed: rollDice,

                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 30),
                ),
                child: Text("RollDice"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//flutter and dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;

import '../model/dicedate.dart' show DiceData;

class DicePage extends StatelessWidget {
  
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    DiceData? diceBattleData = Provider.of<DiceData>(context, listen: true).diceData;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 20),
        Text(
          '出た目: ${diceBattleData!.dispdice}',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        Image.asset(
          'images/dice${diceBattleData.dispdice}.jpeg', 
          width: 118,
          height: 118,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            await diceBattleData.rollDice;
          },
          child: const Text('サイコロを振る'),
        ),
      ],
    );
  }
}
//flutter and dart
import 'package:flutter/material.dart';
import 'dart:math' show Random;

class DiceData  extends ChangeNotifier {
  static DiceData? _diceData; 

  int dispdice = 1;

  // コンストラクタ
  DiceData._();

  DiceData? get diceData => _diceData;

  // ファクトリメソッド: 
  factory DiceData() {
    _diceData ??= DiceData._();
    _diceData?.initializeDate();
    return _diceData!;
  }

  Future<void> initializeDate() async {
    dispdice = 1;
  }

  Future<void> get rollDice async {
    dispdice = Random().nextInt(6) + 1;
    notifyListeners();
  }
}
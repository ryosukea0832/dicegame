import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider, MultiProvider;

//widget
import 'widget/dice.dart' show DicePage;

//model
import 'model/dicedate.dart' show DiceData;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DiceData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dice Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: const DicePage(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'screens/splash/splash.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'The Secret',
      home: Splash(),
    );
  }
}
import 'package:flutter/material.dart';

class AttractMoney extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Attract Money'),
        ),
        body: Center(child: Text('Hello Attract Money'),),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:the_secret/screens/home/menu_organizer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to The Secret"),
      ),
      body: MenuOrganizer(context),
    );
  }
}

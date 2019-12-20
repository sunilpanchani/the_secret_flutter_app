import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/placeholder.png'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Explore The Secret'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

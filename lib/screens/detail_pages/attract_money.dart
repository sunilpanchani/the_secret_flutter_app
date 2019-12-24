import 'package:flutter/material.dart';
import 'text_content.dart';

class AttractMoney extends StatelessWidget {
  final BuildContext context;
  AttractMoney(this.context);

  @override
  Widget build(BuildContext context) {
    final topContent = Container(
      //padding: EdgeInsets.all(110.0),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/money_energy.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );

    final middleContentTitle = Container(
      height: MediaQuery.of(context).size.height * 0.08,
      //  padding: EdgeInsets.fromLTRB(20, 0, 10, 20),

      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
      child: Center(
        child: Text(
          AttractMoney_Title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );

    final middleContentButtons = Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: null,
            child: Text(
              'Watch Video',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              'Listen Technique',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    final middleContent = Container(
      height: MediaQuery.of(context).size.height * 0.4,
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Text(AttractMoney_Content),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Attract Money'),
      ),
      body: Column(
        children: <Widget>[
          topContent,
          middleContentTitle,
          middleContentButtons,
          middleContent,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'am_video_page.dart';
import '../text_content.dart';
import 'am_audio.dart';

class AttractMoney extends StatelessWidget {
  final BuildContext context;
  AttractMoney(this.context);

  @override
  Widget build(BuildContext context) {

    final topContent = Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/money_energy.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );

    final middleContentTitle = Container(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Center(
        child: Text(
          AttractMoney_Title,
          style: Theme.of(context).textTheme.headline,
        ),
      ),
    );

    final middleContentButtons = Container(
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: watchVideo,
            child: Text(
              'Watch Video',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            color: Colors.lime,
          ),
          RaisedButton(
            onPressed: listenAudio,
            child: Text(
              'Listen Technique',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            color: Colors.lime,
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
  watchVideo(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AmVideoPage()
      ),
    );
  }

  listenAudio(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChewieAudioDemo(),
      ),
    );
  }

}


import 'am_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class AmVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[
          AmVideoPlayer(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/attract_money.mp4',
            ),
            looping: true,
          ),
          /*
          AmVideoPlayer(
            videoPlayerController: VideoPlayerController.network(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            ),
          ),
          */
        
        ],
      ),
    );
  }
}

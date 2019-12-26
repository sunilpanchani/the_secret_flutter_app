import 'package:chewie_audio/chewie_audio.dart';
import 'package:chewie_audio/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieAudioDemo extends StatefulWidget {
  ChewieAudioDemo({this.title = 'Attract Money Technique'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieAudioDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieAudioController _chewieAudioController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 =
        VideoPlayerController.asset('assets/audio/attract_money.mp3');

    _chewieAudioController = ChewieAudioController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieAudioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ChewieAudio(
              controller: _chewieAudioController,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieAudioController.dispose();
                      _videoPlayerController2.pause();
                      _videoPlayerController2.seekTo(Duration(seconds: 0));
                      _chewieAudioController = ChewieAudioController(
                        videoPlayerController: _videoPlayerController1,
                        autoPlay: false,
                        looping: true,
                      );
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

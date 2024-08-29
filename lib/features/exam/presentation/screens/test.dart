import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.example.com/video.mp4',  // Replace with your video URL
    )
      ..initialize().then((_) {
        setState(() {});  // Ensure the first frame is shown
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setPlaybackSpeed(double speed) {
    _controller.setPlaybackSpeed(speed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Player')),
      body: Column(
        children: [
          if (_controller.value.isInitialized)
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _setPlaybackSpeed(0.5),
                child: Text('0.5x'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _setPlaybackSpeed(1.0),
                child: Text('1.0x (Normal)'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _setPlaybackSpeed(1.5),
                child: Text('1.5x'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _setPlaybackSpeed(2.0),
                child: Text('2.0x'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}


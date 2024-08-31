import 'dart:developer';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShowVideoWidget extends StatefulWidget {
  final VideoPlayerController controller;
  const ShowVideoWidget({super.key, required this.controller});

  @override
  State<ShowVideoWidget> createState() => _ShowVideoWidgetState();
}

class _ShowVideoWidgetState extends State<ShowVideoWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log("252525");
    try {
      flickManager = FlickManager(
        videoPlayerController: widget.controller,
      );
      log("55555");
    } catch (e) {
      // Handle error if initialization fails
      print('Error initializing flickManager: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x3f393939),
            blurRadius: 6,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: flickManager != null
          ? FlickVideoPlayer(
              flickManager: flickManager!,
            )
          : Container(
              color: Colors.green,
            ),
    );
  }
}

FlickManager? flickManager;

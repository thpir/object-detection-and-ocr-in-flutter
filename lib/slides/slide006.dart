import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Slide006 extends StatelessWidget {
  const Slide006({super.key});

  @override
  Widget build(BuildContext context) {
    return const VideoFrame();
  }
}

class VideoFrame extends StatefulWidget {
  const VideoFrame({super.key});

  @override
  State<VideoFrame> createState() => _VideoFrameState();
}

class _VideoFrameState extends State<VideoFrame> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/videos/lambrecht_promovideo.mp4",
    )..initialize().then((_) {
        setState(() {});
      });
    _controller.play();
    _isPlaying = true;
    _controller.setVolume(0);
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        if (_isPlaying) {
          _controller.pause();
        } else {
          _controller.play();
        }
        _isPlaying = !_isPlaying;
      }),
      child: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller
                  ),
                )
              : Container()),
    );
  }
}

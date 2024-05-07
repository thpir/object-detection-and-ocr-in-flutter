import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Slide038 extends StatefulWidget {
  const Slide038({super.key});

  @override
  State<Slide038> createState() => _Slide038State();
}

class _Slide038State extends State<Slide038> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/videos/dash_runner_demo.mp4",
    )..initialize().then((_) {
        setState(() {});
      });
    _controller.play();
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
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
          Image.asset(
            "assets/images/qr_dash_maze_runner.png",
            width: 400,
            height: 400,
          ),
          Image.asset("assets/images/dash_maze_runner_screen_1_mockup.png"),
          Image.asset("assets/images/dash_maze_runner_screen_2_mockup.png"),
          Image.asset("assets/images/dash_maze_runner_screen_3_mockup.png"),
        ],
      ),
    );
  }
}

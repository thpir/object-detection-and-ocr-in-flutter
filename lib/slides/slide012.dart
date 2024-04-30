import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Slide012 extends StatelessWidget {
  const Slide012({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Column(
        children: [
          const Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "This AI category focuses on the ability of computers to understand and process visual information.",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black
                            ),
                          ),
                          SizedBox(height: 46),
                          Text(
                            "Applications include:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.black
                            ),
                          ),
                          UnorderedListItem(fontSize: 40, bodyText: "Segmentation",),
                          UnorderedListItem(fontSize: 40, highlightedText: "Object detection",),
                          UnorderedListItem(fontSize: 40, bodyText: "Image classification",),
                          UnorderedListItem(fontSize: 40, bodyText: "Pose detection",)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: VideoFrame())
                  ],
                )
              ]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                  children: [
                    TextSpan(text: "Popular system for real-time object detection: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "YOLO", style: TextStyle(decoration: TextDecoration.underline,)),
                    TextSpan(text: " (You Only Look Once)"),
                  ]
                ),
              ),
              Image.asset(
                'assets/images/qr_yolo.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              )
            ],
          )
        ],
      ),
    );
  }
}

class VideoFrame extends StatefulWidget {
  const VideoFrame({super.key});

  @override
  State<VideoFrame> createState() => _VideoFrameState();
}

class _VideoFrameState extends State<VideoFrame> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/videos/object_detection.mp4",
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
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller
                ),
              )
            : Container());
  }
}
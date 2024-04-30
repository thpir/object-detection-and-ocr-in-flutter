import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Slide037 extends StatefulWidget {
  const Slide037({super.key});

  @override
  State<Slide037> createState() => _Slide037State();
}

class _Slide037State extends State<Slide037> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/videos/lambrecht_demo.mp4",
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Object detection:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText: "YOLOv8 is perfect for the job!",
                  ),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText: "Flutter_vision is only for Android",
                  ),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText:
                        "Other packages: tflite_flutter or google_mlkit_object_detection",
                  ),
                  SizedBox(height: 32),
                  Text("Computer Vision:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText:
                        "Not ideal for large (compared to image size) single characters",
                  ),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText: "Outside environment adds complication",
                  ),
                  UnorderedListItem(
                    fontSize: 42,
                    bodyText:
                        "CV trained on silo number images? - probably performant but time-consuming to train",
                  ),
                ],
              )),
          Expanded(
            flex: 1,
            child: InkWell(
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
                          child: VideoPlayer(_controller),
                        )
                      : Container()),
            ),
          ),
        ],
      ),
    );
  }
}

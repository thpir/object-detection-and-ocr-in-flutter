import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide000.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide001.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide002.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide003.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide004.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide005.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide006.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide007.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide008.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide009.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide010.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide011.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide012.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide013.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide014.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide015.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide016.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide017.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide018.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide019.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide020.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide021.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide022.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide023.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide024.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide025.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide026.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide027.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide028.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide029.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide030.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide031.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide032.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide033.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide034.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide035.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide036.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide037.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide038.dart';
import 'package:cv_and_ocr_in_flutter/slides/slide039.dart';
import 'package:cv_and_ocr_in_flutter/templates/howest_content_slide.dart';
import 'package:cv_and_ocr_in_flutter/templates/howest_subtitle_slide.dart';
import 'package:cv_and_ocr_in_flutter/templates/howest_title_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        background: const FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.gradient(
            LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.2],
                colors: [
                  HowestStyle.backgroundColor,
                  HowestStyle.primaryColor
                ]
              )
          )
        ),
        controls: const FlutterDeckControlsConfiguration(
          presenterToolbarVisible: true,
          shortcuts: FlutterDeckShortcutsConfiguration(
            enabled: true,
            nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
            previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          )
        ),
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: false,
        ),
        header: const FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.white,
          strokeWidth: 8.0,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10()
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: [
        HowestTitleSlide(
          slideContent: const Slide000(),
          route: '/slide000'
        ),
        HowestSubtitleSlide(
          slideContent: const Slide001(), 
          route: '/slide001'
        ),
        HowestSubtitleSlide(
          slideContent: const Slide002(), 
          route: '/slide002'
        ),
        HowestContentSlide(
          title: "Who are we?",
          titleIconPath: null,
          slideContent: const Slide003(),
          pageNumber: "4",
          route: '/slide003',
        ),
        HowestSubtitleSlide(
          slideContent: const Slide004(), 
          route: '/slide004'
        ),
        HowestContentSlide(
          title: "Why Flutter in research?",
          titleIconPath: null,
          slideContent: const Slide005(),
          pageNumber: "6",
          route: '/slide005',
        ),
        HowestSubtitleSlide(
          slideContent: const Slide006(), 
          route: '/slide006'
        ),
        HowestContentSlide(
          title: "Project introduction - Lambrecht Trailers",
          titleIconPath: null,
          slideContent: const Slide007(),
          pageNumber: "8",
          route: '/slide007',
        ),
        HowestContentSlide(
          title: "Lambrecht Trailers - Tag reader",
          titleIconPath: null,
          slideContent: const Slide008(),
          pageNumber: "9",
          route: '/slide008',
        ),
        HowestContentSlide(
          title: "Problem statement",
          titleIconPath: null,
          slideContent: const Slide009(),
          pageNumber: "10",
          route: '/slide009',
        ),
        HowestContentSlide(
          title: "The solution - Flutter to the rescue!",
          titleIconPath: null,
          slideContent: const Slide010(),
          pageNumber: "11",
          route: '/slide010',
        ),
        HowestSubtitleSlide(
          slideContent: const Slide011(), 
          route: '/slide011'
        ),
        HowestContentSlide(
          title: "What is computer vision?",
          titleIconPath: null,
          slideContent: const Slide012(),
          pageNumber: "13",
          route: '/slide012',
        ),
        HowestContentSlide(
          title: "Object detection - from data to deployment",
          titleIconPath: null,
          slideContent: const Slide013(),
          pageNumber: "14",
          route: '/slide013',
        ),
        HowestContentSlide(
          title: "Data acquisition",
          titleIconPath: null,
          slideContent: const Slide014(),
          pageNumber: "15",
          route: '/slide014',
        ),
        HowestContentSlide(
          title: "Labeling our data",
          titleIconPath: null,
          slideContent: const Slide015(),
          pageNumber: "16",
          route: '/slide015',
        ),
        HowestContentSlide(
          title: "Training the model",
          titleIconPath: null,
          slideContent: const Slide016(),
          pageNumber: "17",
          route: '/slide016',
        ),
        HowestContentSlide(
          title: "Training the model",
          titleIconPath: null,
          slideContent: const Slide017(),
          pageNumber: "18",
          route: '/slide017',
        ),
        HowestContentSlide(
          title: "Training the model - the Python part",
          titleIconPath: null,
          slideContent: const Slide018(),
          pageNumber: "19",
          route: '/slide018',
        ),
        HowestContentSlide(
          title: "Training the model - the Python part",
          titleIconPath: null,
          slideContent: const Slide019(),
          pageNumber: "20",
          route: '/slide019',
        ),
        HowestContentSlide(
          title: "Deploying the model - the Flutter part",
          titleIconPath: null,
          slideContent: const Slide020(),
          pageNumber: "21",
          route: '/slide020',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide021(),
          pageNumber: "22",
          route: '/slide021',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide022(),
          pageNumber: "23",
          route: '/slide022',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide023(),
          pageNumber: "24",
          route: '/slide023',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide024(),
          pageNumber: "25",
          route: '/slide024',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide025(),
          pageNumber: "26",
          route: '/slide025',
        ),
        HowestContentSlide(
          title: "Deploying the model",
          titleIconPath: null,
          slideContent: const Slide026(),
          pageNumber: "27",
          route: '/slide026',
        ),
        HowestSubtitleSlide(
          slideContent: const Slide027(), 
          route: '/slide027'
        ),
        HowestContentSlide(
          title: "What is OCR?",
          titleIconPath: null,
          slideContent: const Slide028(),
          pageNumber: "29",
          route: '/slide028',
        ),
        HowestContentSlide(
          title: "How it' done",
          titleIconPath: null,
          slideContent: const Slide029(),
          pageNumber: "30",
          route: '/slide029',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide030(),
          pageNumber: "31",
          route: '/slide030',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide031(),
          pageNumber: "32",
          route: '/slide031',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide032(),
          pageNumber: "33",
          route: '/slide032',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide033(),
          pageNumber: "34",
          route: '/slide033',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide034(),
          pageNumber: "35",
          route: '/slide034',
        ),
        HowestContentSlide(
          title: "OCR in Flutter",
          titleIconPath: null,
          slideContent: const Slide035(),
          pageNumber: "36",
          route: '/slide035',
        ),
        HowestSubtitleSlide(
          slideContent: const Slide036(), 
          route: '/slide036'
        ),
        HowestContentSlide(
          title: "Conclusion",
          titleIconPath: null,
          slideContent: const Slide037(),
          pageNumber: "38",
          route: '/slide037',
        ),
        HowestContentSlide(
          title: "Try it out yourself!",
          titleIconPath: null,
          slideContent: const Slide038(),
          pageNumber: "39",
          route: '/slide038',
        ),
        HowestContentSlide(
          title: "Questions?",
          titleIconPath: null,
          slideContent: const Slide039(),
          pageNumber: "40",
          route: '/slide039',
        ),
      ]
    );
  }
}
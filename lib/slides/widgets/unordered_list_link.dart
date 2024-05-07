import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UnorderedListLink extends StatelessWidget {
  final double fontSize;
  final String link;
  final double horizontalSpacing;
  final double verticalSpacing;
  final String bulletPoint;
  final String bodyText;
  final Color color;
  const UnorderedListLink(
      {required this.fontSize,
      required this.link,
      this.horizontalSpacing = 8,
      this.verticalSpacing = 8,
      this.bulletPoint = "•",
      this.bodyText = "",
      this.color = Colors.black,
      super.key});

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var url = Uri.parse(link);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: verticalSpacing, horizontal: horizontalSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            bulletPoint,
            style: TextStyle(fontSize: fontSize, color: Colors.black),
          ),
          SizedBox(width: fontSize / 2),
          TextButton(
                      style: const ButtonStyle(alignment: Alignment.topLeft),
                      onPressed: () async {
          await _launchUrl(url);
                      },
                      child: Text(
          bodyText,
          style: TextStyle(
              fontSize: fontSize,
              color: color,
              ),
                      ),
                    ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';

import '../../../../utility/constants.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: hPadMobile),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          vPad.height,
          Text(
            'About Me',
            style: TextStyle(
                fontSize: 40,
                color: secondaryColor,
                fontWeight: FontWeight.bold),
          ),
          vPad.height,
          AboutMeImage(),
          vPad.height,
          Expanded(child: Html(data: aboutMeHtml1,)),
          // Text(
          //   aboutMe,
          //   style: TextStyle(
          //       fontSize: 14,
          //       color: textColor,
          //       fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: secondaryColor,width: 3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('${imagesPath}about_me.jpg'),
        ),
      ),
    );
  }
}
class TypingTextViewer extends StatefulWidget {
  final String text;
  final Duration typingSpeed;

  const TypingTextViewer({required this.text, this.typingSpeed = const Duration(milliseconds: 15)});

  @override
  _TypingTextViewerState createState() => _TypingTextViewerState();
}

class _TypingTextViewerState extends State<TypingTextViewer> {
  String _displayedText = '';
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    _timer = Timer.periodic(widget.typingSpeed, (timer) {
      if (_currentIndex < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_currentIndex];
          _currentIndex++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        _displayedText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
class MyPainter extends CustomPainter {


  ///Todo show your creativity
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawPath(
    //   Path()
    //     ..lineTo(20, 20)
    //     ..addRect(Rect.fromCenter(center: Offset(0, 0), width: 30, height: 50)),
    //   Paint()..color = Colors.white,
    // );

    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(0, 0),
    //     width: 50,
    //     height: 50,
    //   ),
    //   0,
    //   .2,
    //   true,
    //   Paint()..color = Colors.white,
    // );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

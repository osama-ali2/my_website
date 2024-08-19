import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_website/providers/typing_text_provider.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:provider/provider.dart';

import '../../../../utility/constants.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AboutMeImage(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TypingTextViewer(text: aboutMe,),
                ),
              )
              // SizedBox(
              //     width: 700,
              //     child: const Text(
              //       '$aboutMe',
              //       style: TextStyle(color: textColor),
              //     ))
            ],
          ),
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
      height: 450,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.horizontal(
            end: Radius.circular(borderRadius)),
        border: Border.all(width: 4,color: secondaryColor),
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

  const TypingTextViewer(
      {required this.text,
      this.typingSpeed = const Duration(milliseconds: 15)});

  @override
  _TypingTextViewerState createState() => _TypingTextViewerState();
}

class _TypingTextViewerState extends State<TypingTextViewer> {
  // String _displayedText = '';
  // int _currentIndex = 0;
  Timer? _timer;
  TypingTextProvider? typeTextProvider;

  @override
  void initState() {
    typeTextProvider = Provider.of<TypingTextProvider>(context,listen: false);
    _startTyping();
    super.initState();
  }

  void _startTyping() {
    _timer = Timer.periodic(widget.typingSpeed, (timer) {
      if (typeTextProvider!.currentIndex < widget.text.length) {
        setState(() {
          typeTextProvider!.displayedText += widget.text[typeTextProvider!.currentIndex];
          typeTextProvider!.increaseIndex();
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
        typeTextProvider!.displayedText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

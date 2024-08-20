import 'package:flutter/material.dart';

import '../../../utility/responsive.dart';


import 'dart:async';

import 'package:my_website/providers/typing_text_provider.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:provider/provider.dart';

import '../../../../utility/constants.dart';


// class AboutMeSection extends StatelessWidget {
//   const AboutMeSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Responsive(
//       desktop: AboutMeDesktop(),
//       tablet: AboutMeTablet(),
//       mobile: AboutMeMobile(),
//     );
//   }
// }

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? hPadDesktop : hPadTablet),
      child: Column(
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
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
          ...getContent(context),
        ],
      ),
    );
  }

  List<Widget> getContent(BuildContext context) {
    var isDesktop = Responsive.isDesktop(context);
    var img = AboutMeImage(isDesktop: isDesktop);
    var txt = Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TypingHtmlViewer(
          text: aboutMe,
        ),
      ),
    );
    if (isDesktop) {
      return [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            img,
            txt,
          ],
        )
      ];
    } else {
      return [img, txt];
    }
  }
}

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({
    super.key,
    required this.isDesktop,
  });
  final bool isDesktop;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isDesktop ?450:180,
      width: isDesktop ?300:180,
      decoration: BoxDecoration(
        shape: isDesktop? BoxShape.rectangle:BoxShape.circle,
        borderRadius:isDesktop?BorderRadiusDirectional.horizontal(
            end: Radius.circular(borderRadius)):null,
        border: Border.all(width: 3, color: secondaryColor),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage('${imagesPath}about_me.jpg'),
        // ),
      ),
    );
  }
}

class TypingHtmlViewer extends StatefulWidget {
  final String text;
  final Duration typingSpeed;

  const TypingHtmlViewer(
      {required this.text,
      this.typingSpeed = const Duration(milliseconds: 15)});

  @override
  _TypingHtmlViewerState createState() => _TypingHtmlViewerState();
}

class _TypingHtmlViewerState extends State<TypingHtmlViewer> {
  // String _displayedText = '';
  // int _currentIndex = 0;
  Timer? _timer;
  TypingTextProvider? typeTextProvider;

  @override
  void initState() {
    typeTextProvider = Provider.of<TypingTextProvider>(context, listen: false);
    _startTyping();
    super.initState();
  }

  void _startTyping() {
    _timer = Timer.periodic(widget.typingSpeed, (timer) {
      if (typeTextProvider!.currentIndex < widget.text.length) {
        setState(() {
          typeTextProvider!.displayedText +=
              widget.text[typeTextProvider!.currentIndex];
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
    return Text(
      typeTextProvider!.displayedText,
      style: TextStyle(color: textColor),
    );
  }
}

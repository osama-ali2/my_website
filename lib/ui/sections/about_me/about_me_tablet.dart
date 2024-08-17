import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';

import '../../../utility/constants.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   child: Html(
          //     data: aboutMeHtml,
          //   ),
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

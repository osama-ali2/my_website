import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/colors.dart';
import '../utility/constants.dart';

class ButtonWithArrow extends StatelessWidget {
  const ButtonWithArrow({
    super.key,
    required this.text,
    this.fontSize = 16,
  });

  final String text;
  final double fontSize ;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          showDialog(context: context, builder: (context) => HireMeDialog());
        },
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: secondaryColor),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "${text}",
                  style: TextStyle(color: Colors.black,
                  fontSize: fontSize),
                ),
                // width: 150,
                // height: 40,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius * 1.5),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10),child: SvgPicture.asset('${iconsPath}arrow.svg',width: fontSize+5,)),
            ],
          ),
        ),
      ),
    );
  }
}
class HireMeDialog extends StatelessWidget {
  const HireMeDialog({super.key});

  static const style = TextStyle(
    fontSize: 25,
    color: secondaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: primaryColor,
      shadowColor: Colors.white,
      title: Text(
        "Hire Me!",
        style: style,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Back"),
        )
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            height: 40.0,
            onPressed: () async {
              if (!await launchUrl(Uri.parse(whatsappUrl))) {
                throw Exception('Could not launch $whatsappUrl');
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  '${iconsPath}whatsapp.svg',
                  height: 20.0,
                ),
                10.width,
                Text(
                  'WhatsApp',
                  style: style,
                ),
              ],
            ),
          ),
          20.height,
          MaterialButton(
            height: 40.0,
            onPressed: () async {
              if (!await launchUrl(Uri.parse(upworkUrl))) {
                throw Exception('Could not launch $upworkUrl');
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  upworkIconUrl,
                  height: 20.0,
                  color: Colors.white,
                ),
                10.width,
                Text(
                  'Upwork',
                  style: style,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

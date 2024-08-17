import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';

import '../../utility/constants.dart';

class CreationsSection extends StatelessWidget {
  const CreationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.6,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          vPad.height,
          Text(
            'Featured Creations',
            style: TextStyle(
                fontSize: 40,
                color: secondaryColor,
                fontWeight: FontWeight.bold),
          ),
          vPad.height,
          Container(
            width: MediaQuery.of(context).size.width * .69,
            height: tapBarHeight,
            decoration: BoxDecoration(
              color: tapBarColor,
              borderRadius: BorderRadius.circular(borderRadius * 2),
            ),
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *.11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTab(text: 'ALL'),
                CustomTab(text: 'UI DESIGN'),
                CustomTab(text: 'UX AUDIT'),
                CustomTab(text: 'APP DESIGN'),
                CustomTab(text: 'BRANDING'),
              ],
            ),
          ),
          vPad.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CreationWidget(
                title: 'Mental Health App',
                description: 'Desc',
                type: 'APP DESIGN',
                image: '${imagesPath}about_me.jpg',
              ),
              Padding(
                padding: const EdgeInsets.only(top: vPad*2),
                child: CreationWidget(
                  title: 'Mental Health App',
                  description: 'Desc',
                  type: 'APP DESIGN',
                  image: '${imagesPath}about_me.jpg',
                ),
              ),
              CreationWidget(
                title: 'Mental Health App',
                description: 'Desc',
                type: 'APP DESIGN',
                image: '${imagesPath}about_me.jpg',
              ),
            ],
          ),
          vPad.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CreationWidget(
                title: 'Mental Health App',
                description: 'Desc',
                type: 'APP DESIGN',
                image: '${imagesPath}about_me.jpg',
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: vPad*2),
                child: CreationWidget(
                  title: 'Mental Health App',
                  description: 'Desc',
                  type: 'APP DESIGN',
                  image: '${imagesPath}about_me.jpg',
                ),
              ),
              CreationWidget(
                title: 'Mental Health App',
                description: 'Desc',
                type: 'APP DESIGN',
                image: '${imagesPath}about_me.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: boxTextPadding),
      height: tapHeight,
      decoration: BoxDecoration(
        color: tapColor,
        borderRadius: BorderRadius.circular(borderRadius * 2),
      ),
      child: Text('$text'),
    );
  }
}

class CreationWidget extends StatelessWidget {
  const CreationWidget({
    super.key,
    required this.title,
    required this.description,
    required this.type,
    required this.image,
  });

  final String title;
  final String description;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 314,
            width: 308,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius/2),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('$image'),
              ),
            ),
          ),
          15.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$title',
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius * 2),
                  border: Border.all(color: textColor),
                ),alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: boxTextPadding/2,vertical: boxTextPadding/5),
                child: Text(
                  '$type',
                  style: TextStyle(color: textColor,fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

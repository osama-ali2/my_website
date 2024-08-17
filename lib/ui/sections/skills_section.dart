import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utility/colors.dart';
import '../../utility/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          TitleWidget(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                5,
                (index) => SkillWidget(
                      icon: 'github.svg',
                      name: 'Github',
                      percent: '85',
                    )).toList(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  TitleWidget({
    super.key,
  });

  final style1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Gupter',
    color: secondaryColor,
    fontSize: 40,
  );

  final style2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Gupter',

    fontSize: 40,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = .5,
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: '$skillTitle0',
          style: style1,
        ),
        TextSpan(
          text: '$skillTitle1',
          style: style2,
        ),
        TextSpan(
          text: '$skillTitle2',
          style: style1,
        ),
      ]),
    );
  }
}

class SkillWidget extends StatelessWidget {
  const SkillWidget(
      {super.key,
      required this.icon,
      required this.name,
      required this.percent});

  final String icon;
  final String name;
  final String percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: 170,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: textColor, width: .5),
        borderRadius: BorderRadius.circular(90),
      ),
      child: Column(
        children: [
          Container(
            height: 82,
            width: 82,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: grey1,
            ),
            child: SvgPicture.asset(
              '${iconsPath}${icon}',
            ),
          ),
          Spacer(),
          Text(
            '${percent}%',
            style: TextStyle(
              fontSize: 45,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${name}',
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}

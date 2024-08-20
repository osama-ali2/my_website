import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/universal_widgets/button_with_arrow.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../../utility/colors.dart';
import '../../../../utility/constants.dart';

import '../widgets/_app_bar_mob_tab.dart';
import '../widgets/home_image.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.vertical(bottom: Radius.circular(borderRadius)),
        image: DecorationImage(
          image: AssetImage('${imagesPath}bg_top.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          vPad.height,
          AppBarMobTab(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'HEY THERE! ',
                        style: TextStyle(
                          fontSize: 14,
                          color: secondaryColor,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          '${iconsPath}hi.gif',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  20.height,
                  Text(
                    'OSAMA\nALI',
                    style: TextStyle(
                      height: 1,
                        fontSize: 30,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  20.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'PROGRAMMER ',
                        style: TextStyle(
                          fontSize: 14,
                          color: secondaryColor,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: SvgPicture.asset(
                          '${iconsPath}programming.svg',
                          height: 18,
                        ),
                      ),
                    ],
                  ),
                  40.height,
                  ButtonWithArrow(
                    text: 'Hire Me',
                    fontSize: 10,
                  ),
                ],
              ),//360 270
              HomeImage(
                height: 250,
                width: 200,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}


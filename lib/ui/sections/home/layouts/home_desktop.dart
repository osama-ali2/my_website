import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_website/utility/app.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/universal_widgets/button_with_arrow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../../utility/colors.dart';
import '../../../../utility/constants.dart';
import '../../../../utility/appbar_utils.dart';
import '../../../../utility/desgin/app_dimensions.dart';
import '../../../../utility/desgin/space.dart';
import '../../../../universal_widgets/external_links.dart';
import '../../../../universal_widgets/appbar_actions_button.dart';
import '../../../../universal_widgets/signature_image.dart';
import 'home_mobile.dart';
import '../widgets/_app_bar_desktop.dart';
import '../widgets/home_image.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop),
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
          AppBarDesktop(),
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
                        'WELCOME TO MY PORTFOLIO! ',
                        style: TextStyle(
                          fontSize: 20,
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
                        fontSize: 40,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  20.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'MOBILE APP DEVELOPER ',
                        style: TextStyle(
                          fontSize: 20,
                          color: secondaryColor,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: SvgPicture.asset(
                          '${iconsPath}programming.svg',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  40.height,
                  ButtonWithArrow(
                    text: 'Hire Me',
                  ),
                ],
              ),
              HomeImage(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}


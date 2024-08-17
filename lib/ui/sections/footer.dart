import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/universal_widgets/button_with_arrow.dart';

import '../../utility/constants.dart';
import '../../universal_widgets/external_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: Column(
        children: [
          Divider(
            color: dividerColor,
          ),
          Spacer(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Get A Project in Mind?\nLet\'s Talk',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ButtonWithArrow(text: 'Available For Projects'),
              ],
            ),
          ),
          Spacer(),
          Divider(
            color: dividerColor,
          ),
          Spacer(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
            child: Row(
              children: [
                Html(
                  data:
                      '<p style="color: #${textColor2.value.toRadixString(16).padLeft(8, '0').toUpperCase()}">&copy 2024 Osama Ali. All Rights Reserved</p>',
                  shrinkWrap: true,
                ),
                Spacer(),
                ExternalLinks(
                  url: linkedinUrl,
                  icon: 'linkedin_grey.svg',
                ),
                10.width,
                ExternalLinks(
                  url: facebookUrl,
                  icon: 'facebook_grey.svg',
                ),
                10.width,
                ExternalLinks(
                  url: upworkUrl,
                  icon: 'upwork_grey.svg',
                ),
                10.width,
                ExternalLinks(
                  url: githubUrl,
                  icon: 'github_grey.svg',
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../universal_widgets/button_with_arrow.dart';
import '../../../utility/colors.dart';
import '../../../utility/constants.dart';
import '../../../universal_widgets/external_links.dart';
import '../../../utility/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            color: dividerColor,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    Responsive.isDesktop(context) ? hPadDesktop : hPadTablet),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  Responsive.isDesktop(context)
                      ? 'Get A Project in Mind?\nLet\'s Talk'
                      : 'Have An Idea?\nLet\'s Talk',
                  style: TextStyle(
                    color: textColor,
                    fontSize: !Responsive.isMobile(context) ? 40 : 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ButtonWithArrow(
                  text: 'Available For Projects',
                  fontSize: !Responsive.isMobile(context) ? 16 : 10,
                ),
              ],
            ),
          ),
          Spacer(),
          Divider(
            color: dividerColor,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    Responsive.isDesktop(context) ? hPadDesktop : hPadTablet),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Html(data: copyRightHTML, shrinkWrap: true, style: {
                  "p": Style(
                    fontSize: FontSize(12.0),
                  ),
                }),
                Spacer(flex: 50),
                ExternalLinks(
                  url: linkedinUrl,
                  icon: 'linkedin_grey.svg',
                ),
                Spacer(flex: 1),
                ExternalLinks(
                  url: facebookUrl,
                  icon: 'facebook_grey.svg',
                ),
                Spacer(flex: 1),
                ExternalLinks(
                  url: upworkUrl,
                  icon: 'upwork_grey.svg',
                ),
                Spacer(flex: 1),
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

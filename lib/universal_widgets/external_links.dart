import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/constants.dart';

class ExternalLinks extends StatelessWidget {
  const ExternalLinks({
    super.key,
    required this.url,
    required this.icon,
  });

  final String url, icon;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(Uri.parse(url))) {
            throw Exception('Could not launch $url');
          }
        },
        child: SvgPicture.asset(
          '${iconsPath}${icon}',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}

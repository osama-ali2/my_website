import 'package:flutter/material.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';

import '../../../../universal_widgets/appbar_actions_button.dart';
import '../../../../universal_widgets/external_links.dart';
import '../../../../universal_widgets/signature_image.dart';
import '../../../../utility/appbar_utils.dart';
import '../../../../utility/constants.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        SignatureImage(),
        Spacer(),
        ...AppBarUtils.names.asMap().entries.map(
              (e) => AppBarActionButton(
                label: e.value,
                index: e.key,
              ),
            ),
        Spacer(),
        Row(
          children: [
            ExternalLinks(
              url: linkedinUrl,
              icon: 'linkedin.svg',
            ),
            12.width,
            ExternalLinks(
              url: upworkUrl,
              icon: 'upwork.svg',
            ),
            12.width,
            ExternalLinks(
              url: githubUrl,
              icon: 'github.svg',
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}

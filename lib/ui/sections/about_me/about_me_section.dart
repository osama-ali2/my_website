
import 'package:flutter/material.dart';

import '../../../utility/responsive.dart';
import 'about_me_desktop.dart';
import 'about_me_mobile.dart';
import 'about_me_tablet.dart';


class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: AboutMeDesktop(),
      tablet: AboutMeTablet(),
      mobile: AboutMeMobile(),
    );
  }
}


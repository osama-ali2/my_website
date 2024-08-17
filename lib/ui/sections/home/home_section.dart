import 'package:flutter/cupertino.dart';
import 'package:my_website/ui/sections/home/layouts/home_desktop.dart';
import 'package:my_website/ui/sections/home/layouts/home_tablet.dart';
import 'package:my_website/utility/responsive.dart';

import 'layouts/home_mobile.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HomeDesktop(),
      tablet: HomeTablet(),
      mobile: HomeMobile(),
    );
  }
}

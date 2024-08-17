import 'package:flutter/material.dart';
import 'package:my_website/providers/drawer_provider.dart';
import 'package:my_website/ui/sections/about_me/about_me_section.dart';
import 'package:my_website/ui/sections/creations_section.dart';
import 'package:my_website/ui/sections/home/layouts/home_mobile.dart';
import 'package:my_website/utility/app.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/utility/responsive.dart';
import 'package:my_website/universal_widgets/arrow_on_top.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../providers/scroll_provider.dart';
import '../../utility/appbar_utils.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';
import '../../utility/desgin/app_dimensions.dart';
import '../../utility/desgin/space.dart';
import '../../universal_widgets/app_darwer.dart';
import '../../universal_widgets/appbar_actions_button.dart';
import '../../universal_widgets/external_links.dart';
import '../../universal_widgets/signature_image.dart';
import '../sections/footer.dart';
import '../sections/home/layouts/home_desktop.dart';
import '../sections/home/home_section.dart';
import '../sections/expertise/expertise_section.dart';
import '../sections/home/layouts/home_tablet.dart';
import '../sections/skills_section.dart';

part '_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    scrollProvider.listenAndUpdate();
    return Scaffold(
      key: drawerProvider.key,
      backgroundColor: primaryColor,
      drawer: !Responsive.isDesktop(context) ? AppDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            _Body(),
            scrollProvider.showArrow? ArrowOnTop():SizedBox(),
          ],
        ),
      ),
    );
  }
}

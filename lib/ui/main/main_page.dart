import 'package:flutter/material.dart';
import 'package:my_website/providers/drawer_provider.dart';
import 'package:my_website/utility/responsive.dart';
import 'package:my_website/universal_widgets/arrow_on_top.dart';
import 'package:provider/provider.dart';

import '../../providers/scroll_provider.dart';
import '../../utility/colors.dart';
import '../../universal_widgets/app_darwer.dart';
import '../sections/footer/footer.dart';
import '../sections/skills/skills_section.dart';

part '_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/drawer_provider.dart';
import '../../../../utility/colors.dart';
import '../../../../utility/desgin/app_dimensions.dart';
import '../../../../utility/desgin/space.dart';
import '../../../../universal_widgets/signature_image.dart';

class AppBarMobTab extends StatelessWidget {
  const AppBarMobTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Row(
      children: [
        Spacer(flex: 1),
        IconButton(
          highlightColor: Colors.white54,
          padding: EdgeInsets.zero,
          onPressed: () {
            drawerProvider.key.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: secondaryColor,
          ),
        ),
        Spacer(flex: 8),
        const SignatureImage(),
        Spacer(flex: 1),
      ],
    );
  }
}

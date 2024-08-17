import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/constants.dart';
import 'package:provider/provider.dart';

import '../animations/entrance_fader.dart';
import '../providers/scroll_provider.dart';

class AppBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const AppBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: MaterialButton(
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: secondaryColor,
          onPressed: () {
            scrollProvider.scroll(context,index);
          },
          child: Text(
            label,
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}

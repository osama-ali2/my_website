import 'package:flutter/material.dart';

import '../../../../utility/constants.dart';

class CenterImage extends StatelessWidget {
  const CenterImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('${imagesPath}about_me.jpg'),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.grey[800]!.withOpacity(.3),
        ),
      ),
    );
  }
}

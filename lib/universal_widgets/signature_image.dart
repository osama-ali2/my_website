import 'package:flutter/material.dart';

import '../utility/constants.dart';

class SignatureImage extends StatelessWidget {
  const SignatureImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('${imagesPath}signature.png'),
        ),
      ),
    );
  }
}

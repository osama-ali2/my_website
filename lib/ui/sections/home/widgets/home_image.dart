import 'package:flutter/material.dart';

import '../../../../utility/constants.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
    this.width= 250,this.height = 300
  });
  final double width,height;
//400 300
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .9,
      child: Image.asset(
        '${imagesPath}personal_alone.jpg',
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
    // return Container(
    //   height: height,
    //   width: width,
    //   constraints: BoxConstraints(maxWidth: 400),
    //   decoration: BoxDecoration(
    //     // borderRadius: BorderRadius.circular(borderRadius),
    //     image: DecorationImage(
    //       fit: BoxFit.contain,
    //       image: AssetImage('${imagesPath}personal_alone.jpg'),
    //     ),
    //   ),
    // );
  }
}

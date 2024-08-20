import 'package:flutter/material.dart';

import '../../../../utility/colors.dart';
import '../../../../utility/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    super.key,
    required this.number,
    required this.description,
    this.widthFactor = .18,
    this.heightFactor = .18,
  });

  final String number;
  final String description;
  final double widthFactor;
  final double heightFactor;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * widthFactor,
      height: height * heightFactor,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius / 2),
        border: Border.all(color: textColor, width: .5),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AutoSizeText(
              '$number',
              maxLines: 1,
              style: TextStyle(
                color: secondaryColor,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 8,),
          Expanded(
            flex:2,
            child: AutoSizeText(
              '$description',
              maxLines: 2,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/utility/statistics_utils.dart';
import '../../../../utility/constants.dart';
import '../../../../utility/expertise_utils.dart';
import '../widgets/expertise_card.dart';
import '../widgets/center_image.dart';
import '../widgets/statistics_card.dart';

class ExpertiseTablet extends StatelessWidget {
  const ExpertiseTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.3,
      margin: EdgeInsets.symmetric(horizontal: hPadTablet),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          vPad.height,
          Text(
            'My Expertise',
            style: TextStyle(
                fontSize: 40,
                color: secondaryColor,
                fontWeight: FontWeight.bold),
          ),
          vPad.height,
          SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 8,
                        child: getCard(0),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 8,
                        child: getCard(1),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                Expanded(flex: 7, child: CenterImage()),
                Spacer(flex: 1),
                Flexible(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 8,
                        child: getCard(2),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 8,
                        child: getCard(3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          vPad.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(StatisticsUtils.titles.length, (index){
              return StatisticsCard(
                number: StatisticsUtils.numbers[index],
                description: StatisticsUtils.titles[index],
                widthFactor: .21,
                heightFactor: .18,
              );
            }).toList(),
          ),
          vPad.height,
        ],
      ),
    );
  }

  ExpertiseCard getCard(int index) {
    var model = ExpertiseModel.getExpertise()[index];
    return ExpertiseCard(
      expertiseImage: '${imagesPath}${model.image}',
      expertiseTitle: '${model.title}',
      expertiseDescription: '${model.description}',
    );
  }
}
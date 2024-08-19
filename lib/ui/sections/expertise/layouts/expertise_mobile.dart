import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/expertise_utils.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/utility/statistics_utils.dart';
import '../../../../utility/constants.dart';
import '../widgets/expertise_card.dart';
import '../widgets/center_image.dart';
import '../widgets/statistics_card.dart';

class ExpertiseMobile extends StatelessWidget {
  const ExpertiseMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.3,
      margin: EdgeInsets.symmetric(horizontal: hPadMobile * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),

          Text(
            'My Expertise',
            style: TextStyle(
                fontSize: 40,
                color: secondaryColor,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 6,
                  child: Row(
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
                Expanded(flex: 8, child: CenterImage()),
                Spacer(flex: 1),
                Flexible(
                  flex: 6,
                  child: Row(
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
          Spacer(),
          // SizedBox(
          //   height: 400,
          //   child: GridView.custom(
          //     shrinkWrap: true,
          //     childrenDelegate: SliverChildBuilderDelegate(
          //       (context, index) => Align(
          //         child: StatisticsCard(
          //           number: StatisticsUtils.numbers[index],
          //           description: StatisticsUtils.titles[index],
          //           widthFactor: .4,
          //           heightFactor: .15,
          //         ),
          //       ),
          //     ),
          //     physics: NeverScrollableScrollPhysics(),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     ),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(2, (index) {
              return StatisticsCard(
                number: StatisticsUtils.numbers[index],
                description: StatisticsUtils.titles[index],
                widthFactor: .38,
                heightFactor: .12,
              );
            }).toList(),
          ),
          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(2, (index) {
              return StatisticsCard(
                number: StatisticsUtils.numbers[index + 2],
                description: StatisticsUtils.titles[index + 2],
                widthFactor: .38,
                heightFactor: .12,
              );
            }).toList(),
          ),
          Spacer(),
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

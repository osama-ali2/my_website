import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:my_website/utility/statistics_utils.dart';
import '../../../utility/constants.dart';

class ExpertiseTablet extends StatelessWidget {
  const ExpertiseTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.4,
      margin: EdgeInsets.symmetric(horizontal: hPadDesktop.toDouble()),
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
            height: 550,
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
                        child: _ExpertiseCard(
                          expertiseImage: '${imagesPath}about_me.jpg',
                          expertiseTitle: 'Ui/Ux',
                          expertiseDescription: 'Design',
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 8,
                        child: _ExpertiseCard(
                          expertiseImage: '${imagesPath}about_me.jpg',
                          expertiseTitle: 'Ui/Ux',
                          expertiseDescription: 'Design',
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(flex: 7, child: CenterImage()),
                Spacer(
                  flex: 1,
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 8,
                        child: _ExpertiseCard(
                          expertiseImage: '${imagesPath}about_me.jpg',
                          expertiseTitle: 'Ui/Ux',
                          expertiseDescription: 'Design',
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 8,
                        child: _ExpertiseCard(
                          expertiseImage: '${imagesPath}about_me.jpg',
                          expertiseTitle: 'Ui/Ux',
                          expertiseDescription: 'Design',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          vPad.height,
          // CarouselSlider.builder(
          //   itemCount: StatisticsUtils.titles.length,
          //   itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 15.0),
          //     child: StatisticsCard(
          //       number: StatisticsUtils.numbers[itemIndex],
          //       description: StatisticsUtils.titles[itemIndex],
          //     ),
          //   ),
          //   options: CarouselOptions(
          //     height: MediaQuery.of(context).size.height * 0.26,
          //     autoPlay: true,
          //     autoPlayInterval: const Duration(seconds: 5),
          //     enlargeCenterPage: false,
          //     autoPlayCurve: Curves.fastOutSlowIn,
          //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
          //     enableInfiniteScroll: false,
          //   ),
          // ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsCard(
                  number: '+7',
                  description: 'Years of Experience',
                ),
                StatisticsCard(
                  number: '+7',
                  description: 'Years of Experience',
                ),
                StatisticsCard(
                  number: '+7',
                  description: 'Years of Experience',
                ),
                StatisticsCard(
                  number: '+7',
                  description: 'Years of Experience',
                ),
              ],
            ),
          ),
          vPad.height,
        ],
      ),
    );
  }
}

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
    );
  }
}

class _ExpertiseCard extends StatefulWidget {
  final String expertiseImage;
  final String expertiseTitle;
  final String expertiseDescription;

  const _ExpertiseCard({
    Key? key,
    required this.expertiseImage,
    required this.expertiseTitle,
    required this.expertiseDescription,
  }) : super(key: key);

  @override
  _ExpertiseCardState createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<_ExpertiseCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: _ExpertiseCardBack(
          expertiseDesc: '',
          expertiseTitle: '',
          isHover: isHover,
        ),
        front: _ExpertiseCardFront(
          expertiseTitle: widget.expertiseTitle,
          expertiseImage: widget.expertiseImage,
          isHover: isHover,
        ),
      ),
    );
  }
}

class _FrontBackCard extends StatelessWidget {
  const _FrontBackCard({
    super.key,
    this.expertiseImage,
    required this.expertiseTitle,
    required this.isHover,
    required this.child,
  });

  final String? expertiseImage;
  final String expertiseTitle;
  final bool isHover;
  final Widget child;

  bool get isFront => expertiseImage != null;

  Widget build(BuildContext context) {
    return Container(
      // width: 180,
      // height: 220,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: isFront
            ? DecorationImage(
                image: AssetImage(expertiseImage ?? ''), fit: BoxFit.cover)
            : null,
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(15),
        boxShadow: isHover
            ? [
                BoxShadow(
                  color: secondaryColor.withAlpha(100),
                  blurRadius: 12.0,
                  offset: const Offset(0.0, 0.0),
                )
              ]
            : [
                BoxShadow(
                  color: Colors.black.withAlpha(100),
                  blurRadius: 12.0,
                  offset: const Offset(0.0, 0.0),
                )
              ],
      ),
      child: child,
    );
  }
}

class _ExpertiseCardBack extends StatelessWidget {
  const _ExpertiseCardBack({
    super.key,
    required this.expertiseDesc,
    required this.expertiseTitle,
    required this.isHover,
  });

  final String expertiseDesc, expertiseTitle;
  final bool isHover;

  @override
  Widget build(BuildContext context) {
    return _FrontBackCard(
      expertiseTitle: expertiseTitle,
      isHover: isHover,
      child: Container(),
    );
  }
}

class _ExpertiseCardFront extends StatelessWidget {
  const _ExpertiseCardFront({
    super.key,
    required this.expertiseImage,
    required this.expertiseTitle,
    required this.isHover,
  });

  final String expertiseImage, expertiseTitle;
  final bool isHover;

  @override
  Widget build(BuildContext context) {
    return _FrontBackCard(
      expertiseTitle: expertiseTitle,
      isHover: isHover,
      expertiseImage: expertiseImage,
      child: Text(
        expertiseTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StatisticsCard extends StatelessWidget {
  const StatisticsCard(
      {super.key, required this.number, required this.description});

  final String number;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius / 2),
        border: Border.all(color: textColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$number',
            style: TextStyle(
              color: secondaryColor,
              fontSize: 50,
            ),
          ),

          ///Todo:make a divider
          SizedBox(
            width: 150,
            child: Text(
              '$description',
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

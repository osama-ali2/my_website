import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utility/colors.dart';
import '../../../../utility/constants.dart';

class ExpertiseCard extends StatefulWidget {
  final String expertiseImage;
  final String expertiseTitle;
  final String expertiseDescription;
  final double backFontSize;

  const ExpertiseCard({
    Key? key,
    required this.expertiseImage,
    required this.expertiseTitle,
    required this.expertiseDescription,
    this.backFontSize = 20,
  }) : super(key: key);

  @override
  _ExpertiseCardState createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<ExpertiseCard> {
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
          expertiseDesc: widget.expertiseDescription,
          expertiseTitle: '',
          isHover: isHover,
          fontSize: widget.backFontSize,
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
      // padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: isFront
            ? DecorationImage(
                image: AssetImage(expertiseImage ?? ''),
                fit: BoxFit.cover,
              )
            : null,
        color: secondaryColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(15),
        boxShadow: isHover
            ? [
                BoxShadow(
                  color: secondaryColor.withAlpha(20),
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
    required this.fontSize,
  });

  final String expertiseDesc, expertiseTitle;
  final bool isHover;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return _FrontBackCard(
      expertiseTitle: expertiseTitle,
      isHover: isHover,
      child: Text(
        expertiseDesc,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius / 2),
          color: Colors.grey[800]!.withOpacity(.3),
        ),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Text(
          expertiseTitle,
          style: TextStyle(
            color: Colors.black.withOpacity(.9),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

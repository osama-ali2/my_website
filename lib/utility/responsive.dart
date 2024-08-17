import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key, required this.desktop, required this.tablet, required this.mobile,});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  static isDesktop(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width > 1000;

  static isTablet(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 1000 && MediaQuery
          .of(context)
          .size
          .width > 600;

  static isMobile(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 600;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return desktop;
      }else if (constraints.maxWidth > 600){
        return tablet;
      }
      return mobile;
    },);
  }
}

import 'package:flutter/material.dart';
import 'package:my_website/utility/responsive.dart';
import 'expertise_desktop.dart';
import 'expertise_tablet.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: ExpertiseDesktop(),
      tablet: ExpertiseTablet(),
      mobile: ExpertiseTablet(),
    );
  }
}

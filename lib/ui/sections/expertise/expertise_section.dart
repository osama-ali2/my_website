import 'package:flutter/material.dart';
import 'package:my_website/utility/responsive.dart';
import 'layouts/expertise_desktop.dart';
import 'layouts/expertise_tablet.dart';
import 'layouts/expertise_mobile.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: ExpertiseDesktop(),
      tablet: ExpertiseTablet(),
      mobile: ExpertiseMobile(),
    );
  }
}

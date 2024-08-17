part of 'main_page.dart';

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return SafeArea(
      child: ListView(
        controller: scrollProvider.controller,
        children:const [
          HomeSection(),
          AboutMeSection(),
          ExpertiseSection(),
          // CreationsSection(),
          // SkillsSection(),
          // Footer(),
        ],
      ),
    );
  }

  List<double> sectionHeights(BuildContext context) {
    return [
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.height * 1.4,
      MediaQuery.of(context).size.height * 1.6,
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.height * .5,
    ]
    ;
  }

}

class ExpertiseModel {
  final String image, title, description;

  ExpertiseModel({
    required this.image,
    required this.title,
    required this.description,
  });

  static List<ExpertiseModel> getExpertise() {
    return [
      ExpertiseModel(
        image: 'about_me.jpg',
        title: 'Ui/Ux',
        description: '4+ years in Mobile Development',
      ),
      ExpertiseModel(
        image: 'about_me.jpg',
        title: 'Ui/Ux',
        description: '4+ years in Mobile Development',
      ),
      ExpertiseModel(
        image: 'about_me.jpg',
        title: 'Ui/Ux',
        description: '4+ years in Mobile Development',
      ),
      ExpertiseModel(
        image: 'about_me.jpg',
        title: 'Ui/Ux',
        description: '4+ years in Mobile Development',
      ),
    ];
  }
}

import 'package:my_website/models/creation_model.dart';
import 'package:my_website/models/skill_model.dart';
import 'package:my_website/models/statistics_model.dart';
import 'package:my_website/utility/constants.dart';

import '../models/expertise_model.dart';

class Data {
  static List<CreationModel> getCreations() {
    return [
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App',
        title: 'Enatni',
        description: 'description',
      ),
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App1',
        title: 'Enatni',
        description: 'description',
      ),
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App2',
        title: 'Enatni',
        description: 'description',
      ),
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App3',
        title: 'Enatni',
        description: 'description',
      ),
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App4',
        title: 'Enatni',
        description: 'description',
      ),
      CreationModel(
        image: '${imagesPath}about_me.jpg',
        type: 'Mobile App5',
        title: 'Enatni',
        description: 'description',
      ),
    ];
  }

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

  static List<StatisticsModel> getStatistics() {
    return [
      StatisticsModel(description: 'Years of Experience', number: '+7',),
      StatisticsModel(description: 'Years of Experience', number: '+7',),
      StatisticsModel(description: 'Years of Experience', number: '+7',),
      StatisticsModel(description: 'Years of Experience', number: '+7',),
    ];
  }


  static List<SkillModel> getSkills() {
    return [
      SkillModel(icon: 'github.svg', name: 'Github', percent: '85'),
      SkillModel(icon: 'github.svg', name: 'Github', percent: '85'),
      SkillModel(icon: 'github.svg', name: 'Github', percent: '85'),
      SkillModel(icon: 'github.svg', name: 'Github', percent: '85'),
      SkillModel(icon: 'github.svg', name: 'Github', percent: '85'),
    ];
  }

}

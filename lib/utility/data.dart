import 'package:my_website/models/creation_model.dart';
import 'package:my_website/utility/constants.dart';

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
}

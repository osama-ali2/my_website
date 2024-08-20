import 'package:flutter/cupertino.dart';


class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  bool showArrow = false;

  listenAndUpdate(){
    scrollController.addListener((){
      if(scrollController.offset <50){
        showArrow = false;
      }else{
        showArrow = true;
      }
      notifyListeners();
    });
  }

  scroll(BuildContext context, int index) {
    double offset = index == 1
        ? MediaQuery.of(context).size.height
        : index == 2
            ? MediaQuery.of(context).size.height * 1.6
            : index == 3
                ? MediaQuery.of(context).size.height * 1.4
                : MediaQuery.of(context).size.height;

    controller.animateTo(
      offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
        offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}

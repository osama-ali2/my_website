import 'package:flutter/cupertino.dart';

import 'desgin/app_dimensions.dart';
import 'desgin/app_theme.dart';
import 'desgin/app_typography.dart';
import 'desgin/space.dart';
import 'desgin/ui.dart';
import 'desgin/ui_props.dart';


class App {
  static init(BuildContext context){
    UI.init(context);
    AppDimensions.init();
    AppTheme.init(context);
    UIProps.init();
    Space.init();
    AppText.init();
  }
}
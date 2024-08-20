import 'package:flutter/material.dart';
import 'package:my_website/providers/drawer_provider.dart';
import 'package:my_website/providers/scroll_provider.dart';
import 'package:my_website/providers/typing_text_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'ui/main/main_page.dart';
import 'utility/app_theme.dart';
import 'utility/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy(); //set url strategy of web app to using paths instead of a leading hash (`#`).
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScrollProvider()),
        ChangeNotifierProvider(create: (context) => DrawerProvider()),
        ChangeNotifierProvider(create: (context) => TypingTextProvider()),
      ],
      child: MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ralali_cake_app/core/theme/_themes.dart';
import 'package:ralali_cake_app/features/home/presentation/pages/home_page.dart';
import 'package:ralali_cake_app/services/navigation.dart';

final nav = NavigationService();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ralali Cake App',
      theme: ThemeData(
        fontFamily: RalaliFontTheme.fontFamily,
      ),
      navigatorKey: nav.navigatorKey,
      home: const HomePage(),
    );
  }
}

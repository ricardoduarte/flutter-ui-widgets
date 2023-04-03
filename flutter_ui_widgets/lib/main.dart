import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

final lightTheme = ThemeData(
    textTheme: const TextTheme(
  headlineSmall: TextStyle(fontSize: 24.0),
));

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 24.0),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Widgets',
      theme: lightTheme.copyWith(
        colorScheme: lightTheme.colorScheme.copyWith(
          primary: Colors.red,
          secondary: Colors.green,
        ),
      ),
      darkTheme: darkTheme,
      home: const MainPage(),
    );
  }
}

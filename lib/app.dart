import 'package:flutter/material.dart';
import 'package:solid_color_task/views/color_changing_screen.dart';

void main() {
  runApp(const App());
}

/// Main app widget
class App extends StatelessWidget {
   /// Creates the main application widget.
  const App({super.key});

  ///Creates the main user interface of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontWeight: FontWeight.w500),
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: const ColorChangingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

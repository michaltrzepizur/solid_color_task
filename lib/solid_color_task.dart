import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const SolidColorTask());
}

/// Main app widget
class SolidColorTask extends StatelessWidget {
  /// constructor
  const SolidColorTask({super.key});

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

/// A widget that changes the background color on touch.
class ColorChangingScreen extends StatefulWidget {
  //// constructor
  const ColorChangingScreen({super.key});

  /// Creates a mutable state for this widget.
  @override
  State<ColorChangingScreen> createState() => _ColorChangingScreenState();
}

class _ColorChangingScreenState extends State<ColorChangingScreen> {
  /// Avoid magic numbers logic
  static const int _maxRgbValue = 0xFFFFFF;
  static const int _alphaValue = 0xFF000000;

  Color _backgroundColor = Colors.white;

  Color _generateRandomColor() {
    final random = Random();
    final randomColorValue = random.nextInt(_maxRgbValue + 1);

    return Color(_alphaValue | randomColorValue);
  }

  void _changeColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  /// Text
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(
            'Hello ther',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.white,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

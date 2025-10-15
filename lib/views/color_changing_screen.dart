import 'package:flutter/material.dart';
import 'package:solid_color_task/logic/color_generator_logic.dart';

/// A widget that changes the background color on touch.
class ColorChangingScreen extends StatefulWidget {
  /// constructor
  const ColorChangingScreen({super.key});

  /// Creates a mutable state for this widget.
  @override
  State<ColorChangingScreen> createState() => _ColorChangingScreenState();
}

class _ColorChangingScreenState extends State<ColorChangingScreen> {
  final _colorGenerator = ColorGeneratorLogic();

  /// The currently displayed background color.
  Color _backgroundColor = Colors.white;

  /// Handles the tap event and updates the color state.
  void _changeColor() {
    setState(() {
      _backgroundColor = _colorGenerator.generateRandomColor();
    });
  }

  /// Builds the user interface.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
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

import 'dart:math';
import 'package:flutter/material.dart';


/// Klasa odpowiedzialna WYŁĄCZNIE za generowanie koloru.
class ColorGeneratorLogic {
  // Stałe i Random są teraz tutaj, poza widżetem.
  static const int _maxRgbValue = 0xFFFFFF;
  static const int _alphaValue = 0xFF000000;
  final Random _random = Random();

  /// Zwraca losowy kolor
  Color generateRandomColor() {
    final randomColorValue = _random.nextInt(_maxRgbValue + 1);


    return Color(_alphaValue | randomColorValue);
  }
}

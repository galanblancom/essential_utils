import 'package:flutter/material.dart';

class ColorUtils {
  /// Creates a [MaterialColor] from a given [Color].
  static MaterialColor createMaterialColor(Color color) {
    List<int> strengths = <int>[
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int strength in strengths) {
      final double opacity = (strength / 1000);
      final int blendR = ((1 - opacity) * 255 + opacity * r).round();
      final int blendG = ((1 - opacity) * 255 + opacity * g).round();
      final int blendB = ((1 - opacity) * 255 + opacity * b).round();
      swatch[strength] = Color.fromRGBO(blendR, blendG, blendB, 1);
    }

    return MaterialColor(color.value, swatch);
  }

  /// Returns the best font color (black or white) based on the background color.
  static Color getBestFontColor(Color backgroundColor) {
    double luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
    );
  }
}
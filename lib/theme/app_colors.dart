import 'package:flutter/material.dart';

/// Centralized color palette for the Thrifty app
/// Using vibrant, modern colors instead of generic defaults
class AppColors {
  // Primary Colors - Vibrant teal/turquoise for thrifting/sustainability theme
  static const Color primary = Color(0xFF00BFA5);
  static const Color primaryLight = Color(0xFF5DF2D6);
  static const Color primaryDark = Color(0xFF008E76);

  // Secondary Colors - Warm coral for accents
  static const Color secondary = Color(0xFFFF6B9D);
  static const Color secondaryLight = Color(0xFFFF9CC5);
  static const Color secondaryDark = Color(0xFFC73E75);

  // Accent Colors
  static const Color accent = Color(0xFFFFAB40);
  static const Color accentLight = Color(0xFFFFDD71);
  static const Color accentDark = Color(0xFFC77C02);

  // Background Colors
  static const Color background = Color(0xFFF8F9FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF1F3F4);

  // Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFFBDBDBD);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Utility Colors
  static const Color error = Color(0xFFE53935);
  static const Color success = Color(0xFF43A047);
  static const Color warning = Color(0xFFFB8C00);
  static const Color info = Color(0xFF1E88E5);

  // Gradient Definitions
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, Color(0xFF00D4B8)],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, Color(0xFFFF8BB5)],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, Color(0xFFFFBE5C)],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFF8F9FA), Color(0xFFE8F5F3)],
  );

  // Glass morphism colors
  static Color glassDark = Colors.white.withOpacity(0.1);
  static Color glassLight = Colors.white.withOpacity(0.2);

  // Shadow colors
  static Color shadowLight = Colors.black.withOpacity(0.05);
  static Color shadowMedium = Colors.black.withOpacity(0.1);
  static Color shadowDark = Colors.black.withOpacity(0.15);
}

import 'package:shared_preferences/shared_preferences.dart';

/// Helper class for managing SharedPreferences
class PrefsHelper {
  static const String _keyOnboardingComplete = 'onboarding_complete';
  static const String _keyFirstLaunch = 'first_launch';

  /// Check if onboarding has been completed
  static Future<bool> isOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyOnboardingComplete) ?? false;
  }

  /// Set onboarding as complete
  static Future<void> setOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyOnboardingComplete, true);
  }

  /// Check if this is the first app launch
  static Future<bool> isFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirst = prefs.getBool(_keyFirstLaunch) ?? true;
    if (isFirst) {
      await prefs.setBool(_keyFirstLaunch, false);
    }
    return isFirst;
  }

  /// Clear all preferences (useful for testing)
  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

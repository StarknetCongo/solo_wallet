import 'dart:io';

import 'package:flutter/material.dart'
    show
        BuildContext,
        ChangeNotifier,
        ThemeMode,
        WidgetsBinding,
        Brightness,
        Theme;
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:provider/provider.dart';
import 'package:solo_wallet/services/shared_prefs.dart';

class AppSetting with ChangeNotifier {
  ThemeMode get getThemeMode {
    bool? themeModeInString = AppPref.getTheme;

    switch (themeModeInString) {
      case true:
        return ThemeMode.dark;
      case false:
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }

  // always listerner to the platform change
  void platFormthemeListner() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        getThemeMode;
        notifyListeners();
      },
    );
  }

  static SystemUiOverlayStyle settOverLay(BuildContext context) {
    bool isDark =
        (Provider.of<AppSetting>(context).getThemeMode == ThemeMode.dark ||
            Provider.of<AppSetting>(context).getThemeMode == ThemeMode.system);
    return Platform.isIOS
        ? isDark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
            statusBarIconBrightness:
                isDark ? Brightness.light : Brightness.dark,
            systemNavigationBarIconBrightness:
                isDark ? Brightness.light : Brightness.dark,
          );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solo_wallet/services/app_setting.dart';
import 'package:solo_wallet/services/shared_prefs.dart';
import 'package:solo_wallet/views/start/solo_wallet.dart';

Future<void> main() async {
  AppPref.prefs = await SharedPreferences.getInstance();
  runApp(
    ChangeNotifierProvider<AppSetting>(
      create: (context) => AppSetting(),
      child: Consumer<AppSetting>(
        builder: (context, value, child) => const SoloApp(),
      ),
    ),
  );
}

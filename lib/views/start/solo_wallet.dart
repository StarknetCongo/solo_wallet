import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solo_wallet/resources/route.dart';
import 'package:solo_wallet/services/app_setting.dart';
import 'package:solo_wallet/services/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:solo_wallet/views/start/splash_screen.dart';

class SoloApp extends StatefulWidget {
  const SoloApp({super.key});

  @override
  State<SoloApp> createState() => _SoloAppState();
}

class _SoloAppState extends State<SoloApp> {
  AppStyle appStyle = AppStyle();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (mounted) {
      Provider.of<AppSetting>(context, listen: false).platFormthemeListner();
    }
  }

  // This widget is the root entry point of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoloWallet',
      debugShowCheckedModeBanner: false,
      darkTheme: appStyle.darkTheme(context),
      theme: appStyle.lightTheme(context),
      themeMode: Provider.of<AppSetting>(context).getThemeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SplashScreen(),
      routes: routes,
    );
  }
}

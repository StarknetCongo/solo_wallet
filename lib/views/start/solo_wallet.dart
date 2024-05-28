import 'package:flutter/material.dart';
import 'package:solo_wallet/resources/route.dart';

import 'package:solo_wallet/views/start/splash_screen.dart';

class SoloApp extends StatelessWidget {
  const SoloApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoloWallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:solo_wallet/solo_wallet/pages/home_page/home_page.dart';

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
      home: const HomePage(title: 'SoloWallet'),
    );
  }
}


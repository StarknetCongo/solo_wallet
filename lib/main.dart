import 'package:flutter/material.dart';

import 'package:solo_wallet/screens/loading_page.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //     systemNavigationBarColor: Colors.black));

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //     systemNavigationBarColor: Colors.black));
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Solo Wallet',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Google'),
      home: const Loading(),
    );
  }
}

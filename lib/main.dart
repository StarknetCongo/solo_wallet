import 'package:flutter/material.dart';
import 'package:solo_wallet/screens/create_account.dart';
import 'package:solo_wallet/screens/create_pin.dart';
import 'package:solo_wallet/screens/loading_page.dart';
import 'package:solo_wallet/screens/main_page.dart';
import 'package:solo_wallet/screens/restore_account.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Solo Wallet',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Google'),
      home:    Restore_an_account(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:solo_wallet/components/BottomSheetBarIcon.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/home_page.dart';

// ignore: camel_case_types
class Navigation_Page extends StatefulWidget {
  const Navigation_Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Navigation_PageState createState() => _Navigation_PageState();
}

// ignore: camel_case_types
class _Navigation_PageState extends State<Navigation_Page> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Home_Page(),
      bottomSheet: BottomBarSheet(
        buttonPosition: ButtonBottomBarPosition.center,
        innerChild: const Center(
          child: Home_Page(),
        ),
        currentIndex: _currentIndex,
        curve: Curves.bounceIn,
        backgroundBarColor: Colors.white,
        backgroundColor: Colors.white,
        children: [
          BottomSheetBarIcon(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            color: CouleurPrincipale,
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Home_Page(),),);
            },
          ), 
          BottomSheetBarIcon(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            color: CouleurPrincipale,
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Home_Page(),),);
            },
          ),
        ],
      ),
    );
  }
}

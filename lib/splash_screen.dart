import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  List candidat = ['11', '333', '444', '5555', '666'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PageView(
              children: List.generate(
                candidat.length,
                (index) {
                  return Text(candidat[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

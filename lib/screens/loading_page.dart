import 'dart:async';
import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/main_page.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), page);
  }

  page() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const Main_page(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.3,
            ),
            Text('Solo Wallet', style: TitreStyle),
            Center(child: Image.asset('assets/image1.jpg')),
            const Spacer(),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.build,
                color: Colors.black,
              ),
              label: const Text(
                'StarknetCongo',
                style: TextStyle(color: Colors.black),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CircleAvatar(
            //       backgroundColor: Colors.white,
            //       radius: 16,
            //       child: Image.asset('asset/sp/a.jpg'),
            //     ),
            //     const Padding(padding: EdgeInsets.only(left: 10)),
            //     CircleAvatar(
            //       backgroundColor: Colors.white,
            //       radius: 16,
            //       child: Image.asset('asset/sp/b.png'),
            //     ),
            //     const Padding(padding: EdgeInsets.only(left: 10)),
            //     CircleAvatar(
            //       backgroundColor: Colors.white,
            //       radius: 16,
            //       child: Image.asset('asset/sp/c.png'),
            //     )
            //   ],
            // ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

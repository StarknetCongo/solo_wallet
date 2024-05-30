import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/send%20money.dart';
import 'package:qr_flutter/qr_flutter.dart';

class send_money_qr extends StatefulWidget {
  const send_money_qr({super.key});

  @override
  State<send_money_qr> createState() => _send_money_qrState();
}

class _send_money_qrState extends State<send_money_qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              'Balance 750 USDT',
              style: GoogleFonts.abel(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: QrImageView(
              data: '750',
              version: QrVersions.auto,
              size: 250.0,
            ),
          ),
          const CustomClicButton(
            navigation: Send_money_page(),
            size1: 135,
            text: 'RESTART SCAN',
          )
        ],
      ),
    );
  }
}

class Send_moneyn_view extends StatefulWidget {
  const Send_moneyn_view({super.key});

  @override
  State<Send_moneyn_view> createState() => _Send_moneyn_viewState();
}

class _Send_moneyn_viewState extends State<Send_moneyn_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/image3.avif'),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-10 USDT',
                    style: TitreStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sending 10 USDT to @john',
                    style: SousTStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '0x443898484393489344839  ',
                    style: SousTStyle,
                  ),
                ],
              ),
            ),
            const CustomClicButton(
              navigation: Send_money_page(),
              size1: 135,
              text: 'RESTART SCAN',
            ),
            TextButton(
              child: Text(
                'Cancel',
                style: TitreStyle,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}

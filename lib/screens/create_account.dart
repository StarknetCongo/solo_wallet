import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solo_wallet/components/CustomSaveButton.dart';
import 'package:solo_wallet/constants/style.dart';

class Create_account extends StatefulWidget {
  const Create_account({super.key});

  @override
  State<Create_account> createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {
  bool _isChecked = false;

  void _acceptTerms(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });

    if (_isChecked) {
      // Perform the action to accept the terms
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Terms and conditions accepted')),
      );
    }
  }

  String copyText =
      'This is the seed phrase that works as the pass word for your account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleApp,
          const Text('Copy this seed phrase'),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(copyText),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: copyText));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Seed phrase copied to clipboard'),
                                  ),
                                );
                              },
                              child: const Text('Copy'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: _acceptTerms,
              ),
              GestureDetector(
                onTap: () {
                  _acceptTerms(!_isChecked);
                },
                child: const Text(
                  'Make sure you don’t share this seed phrase with\n any one to not loose all your funds',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          CustomSaveButton(
            text: 'CREATE THE ACCOUNT',
          )
        ],
      ),
    );
  }
}

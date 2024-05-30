import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/create_account.dart';
import 'package:solo_wallet/screens/create_pin.dart';
import 'package:solo_wallet/screens/navigationButton_bar.dart';
import 'package:solo_wallet/screens/restore_account.dart';

// ignore: camel_case_types
class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

// ignore: camel_case_types
class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/reg.avif'),
          Text(
            'Solo wallet',
            style: TitreStyle,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: CouleurPrincipale, // Text color
                  shadowColor: Colors.deepPurpleAccent, // Shadow color
                  elevation: 10, // Elevation
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70, vertical: 15), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18, // Text size
                    fontWeight: FontWeight.bold, // Text weight
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Create_account(),
                    ),
                  );
                },
                child: Text(
                  'Create a new account',
                  style: TitreStyleWhite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: CouleurPrincipale, // Text color
                    shadowColor: Colors.deepPurpleAccent, // Shadow color
                    elevation: 10, // Elevation
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15), // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                    textStyle: const TextStyle(
                      fontSize: 18, // Text size
                      fontWeight: FontWeight.bold, // Text weight
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Restore_an_account(),
                      ),
                    );
                  },
                  child: Text(
                    'Restore an existing account',
                    style: TitreStyleWhite,
                  ),
                ),
              ),
              TextButton(
                child: const Text('Skip'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => const Navigation_Page()),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

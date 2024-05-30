import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/navigationButton_bar.dart';
import 'package:solo_wallet/widgets/customTextField.dart';

// ignore: camel_case_types
class Create_pin extends StatefulWidget {
  const Create_pin({super.key});

  @override
  State<Create_pin> createState() => _Create_pinState();
}

// ignore: camel_case_types
class _Create_pinState extends State<Create_pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleApp,
              Image.asset(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: 600,
                  'assets/reg.webp'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Create a PIN',
                  style: TitreStyle,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                    textHint: "Enter your 4 digits PIN ",
                    controller: null,
                    icon: Icons.key,
                    isName: true,
                  ),
                  CustomTextField(
                    textHint: "Confirm your PIN ",
                    controller: null,
                    icon: Icons.key,
                    isName: true,
                  ),
                  CustomTextField(
                    textHint: "Add you pseudo name ",
                    controller: null,
                    icon: Icons.person,
                    isName: true,
                  ),
                  // CustomSaveButton(
                  //   text: 'Save',
                  // ),

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
                            builder: (context) => const Navigation_Page(),
                          ),
                        );
                      },
                      child: Text(
                        'Save',
                        style: TitreStyleWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

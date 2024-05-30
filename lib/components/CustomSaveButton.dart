import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/create_pin.dart';

// ignore: must_be_immutable
class CustomSaveButton extends StatelessWidget {
  CustomSaveButton({
    required this.text,
    super.key,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        builder: (context) => const Create_pin()),
                  );
                },
        child: Text(
          text,
          style: TitreStyleWhite,
        ),
      ),
    );
  }
}

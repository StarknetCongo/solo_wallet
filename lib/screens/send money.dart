import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/navigationButton_bar.dart';
import 'package:solo_wallet/widgets/customTextField.dart';

class Send_money_page extends StatefulWidget {
  const Send_money_page({super.key});

  @override
  State<Send_money_page> createState() => _Send_money_pageState();
}

class _Send_money_pageState extends State<Send_money_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Send money',
              style: TitreStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white, // Couleur de la bordure
                          width: 2.0, // Largeur de la bordure
                        ),
                        borderRadius: BorderRadius.circular(
                            2.0), // Rayon des coins arrondis (facultatif)
                      ),
                      child: TextButton(
                        child: Text('From offline', style: TitreStyle),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      child: Text(
                        'From online',
                        style: TitreStyle,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Balance 750 USDT',
            style: GoogleFonts.abel(fontSize: 20, color: Colors.black),
          ),
          CustomTextField(
            textHint: "Enter the amount to send ",
            controller: null,
            isNumber: true,
            isName: true,
          ),
          const CustomClicButton(
            size1: 170,
            text: 'SEND',
            navigation: Navigation_Page(),
          ),
        ],
      ),
    );
  }
}

class CustomClicButton extends StatelessWidget {
  final String text;
  final double size1;
  final Widget navigation;

  const CustomClicButton({
    super.key,
    required this.text,
    required this.size1,
    required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: CouleurPrincipale, // Text color
          shadowColor: Colors.deepPurpleAccent, // Shadow color
          elevation: 10, // Elevation
          padding: EdgeInsets.symmetric(
            horizontal: size1,
            vertical: 15,
          ), // Padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Rounded corners
          ),
          textStyle: const TextStyle(
            fontSize: 18, // Text size
            fontWeight: FontWeight.bold, // Text weight
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => navigation,
            ),
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

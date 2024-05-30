import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/create_confirm_pin.dart';
import 'package:solo_wallet/widgets/customTextField.dart';

class Restore_an_account extends StatefulWidget {
  const Restore_an_account({super.key});

  @override
  State<Restore_an_account> createState() => _Restore_an_accountState();
}

class _Restore_an_accountState extends State<Restore_an_account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 178),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Solo wallet',
              style: TitreStyle,
            ),
            Image.asset(
                height: MediaQuery.of(context).size.height * 0.2,
                width: 600,
                'assets/reg.webp'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Restore an account',
                style: TitreStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '   Enter your 12 words seed phrase',
                style: TitreStyle,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
                Inputcustom12Worrd(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          builder: (context) => const create_confirm_pin(),
                        ),
                      );
                    },
                    child: Text(
                      'RESTORE MY ACCOUNT',
                      style: TitreStyleWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Inputcustom12Worrd extends StatelessWidget {
  const Inputcustom12Worrd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 100.0,
      margin: const EdgeInsets.only(top: 5.0),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Center(
        child: TextFormField(
          // readOnly: readOnly != true ? false : true,
          // onTap: func,
          keyboardType: TextInputType.number,
          // enabled: enabled ?? true,
          // controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

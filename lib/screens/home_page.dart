import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/widgets/historical_widget.dart';

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.person),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
        centerTitle: false,
        title: Text(
          'Solo wallet',
          style: TitreStyle,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: const CustomFloatingbutton(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //   const Icon(Icons.person),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Hey Zlatan ibile',
                        textStyle: TitreStyle,
                        textAlign: TextAlign.left,
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: CouleurPrincipale,
                    border: Border.all(
                      color: CouleurPrincipale,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Hey Zlatan ibile',
                        //   style: TitreStyleWhite,
                        // ),
                        Text(
                          'Offline balance',
                          style: TitreStyleWhite,
                        ),
                        Text(
                          '300USDT',
                          style: TitreStyleWhite,
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                        Text(
                          'Onine balance',
                          style: TitreStyleWhite,
                        ),
                        Text(
                          '300USDT',
                          style: TitreStyleWhite,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: CouleurPrincipale, // Text color
                      shadowColor: Colors.deepPurpleAccent, // Shadow color
                      elevation: 10, // Elevation
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18, // Text size
                        fontWeight: FontWeight.normal, // Text weight
                      ),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Send', style: TitreStyleWhite),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: CouleurPrincipale, // Text color
                      shadowColor: Colors.white30, // Shadow color
                      elevation: 10, // Elevation
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18, // Text size
                        fontWeight: FontWeight.normal, // Text weight
                      ),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      'Receive',
                      style: TitreStyleWhite,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Your latest transanctions'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('View all'),
                            ),
                          ],
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                        historical_widget(
                          idTrans: 'x0168398035800130',
                          mount: '340',
                          timeTrans: '3',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

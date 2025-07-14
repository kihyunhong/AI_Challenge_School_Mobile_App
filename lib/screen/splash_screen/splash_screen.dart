import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('AI', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 60.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                ),),
                Text('Challenge', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 45.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                ),),
                Text('School', style: GoogleFonts.pattaya(
                    fontSize: 60.0,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold)),
              ],
            ),
            Image.asset(
              'assets/images/TIEUM_LOGO-removebg-preview.png',
              //25% of height & 50% of width
              height: 150,
              width: 150,
            ),
          ],
        ),
    ));
  }
}

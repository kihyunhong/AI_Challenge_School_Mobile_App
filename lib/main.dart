import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindful_frost_team_cherry_orchard/routes.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/splash_screen/splash_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindful Frost',
      theme: ThemeData.light().copyWith(
        //scaffold default color
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
              color: kPrimaryColor,
              elevation: 0,
              iconTheme: IconThemeData(color: kTextWhiteColor)),
          //use google fonts for the app, will be using
          textTheme:
          GoogleFonts.sourceSans3TextTheme(Theme.of(context).textTheme)
              .apply()
              .copyWith(
            //custom text for bodyText1
            bodyLarge: const TextStyle(
                color: kTextWhiteColor,
                fontSize: 35.0,
                fontWeight: FontWeight.bold),
            bodySmall: const TextStyle(
              color: kTextWhiteColor,
              fontSize: 28.0,
            ),
            titleLarge: const TextStyle(
                color: kTextWhiteColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
            titleSmall: const TextStyle(
                color: kTextWhiteColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w400),
          ),

          //input decoration theme for all the app
          inputDecorationTheme: const InputDecorationTheme(
            //label style for formField
            labelStyle: TextStyle(
                fontSize: 15.0,
                color: kTextLightColor,
                fontWeight: FontWeight.w400,
                height: 0.5),
            //hint style
            hintStyle: TextStyle(
                fontSize: 16.0,
                color: kTextBlackColor,
                fontWeight: FontWeight.w400,
                height: 0.5),
            //using underline input border (not outline)
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor, width: 0.7),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor),
            ),
            //on focus, change color
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            //color changes when the user enters wrong information,
            //using validators for this process
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBoundColor,
                width: 1.2,
              ),
            ),
            //same on focus error color
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBoundColor,
                width: 1.2,
              ),
            ),
          )),
      //first screen is splash screen
      initialRoute: SplashScreen.routeName,
      //define the routes file here in order to access the routes
      //any where all over the application
      routes: routes,
    );
  }
}

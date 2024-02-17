import 'package:flutter/cupertino.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/about_us_screen/about_us_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/SAD_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/coronavirus_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/frostbite_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/hypothermia_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/pneumonia_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/home_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/splash_screen/splash_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/SAD_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/frostbite_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/hypothermia_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/pneumonia_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/diseases_screen/flu_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/flu_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/covid_test_screen.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  TestScreen.routeName: (context) => TestScreen(),
  AboutUsScreen.routeName: (context) => AboutUsScreen(),
  FluScreen.routeName: (context) => FluScreen(),
  FluTestScreen.routeName: (context) => FluTestScreen(),
  CovidScreen.routeName: (context) => CovidScreen(),
  CovidTestScreen.routeName: (context) => CovidTestScreen(),
  HypothermiaScreen.routeName: (context) => HypothermiaScreen(),
  HypothermiaTestScreen.routeName: (context) => HypothermiaTestScreen(),
  FrostbiteScreen.routeName: (context) => FrostbiteScreen(),
  FrostbiteTestScreen.routeName: (context) => FrostbiteTestScreen(),
  PneumoniaScreen.routeName: (context) => PneumoniaScreen(),
  PneumoniaTestScreen.routeName: (context) => PneumoniaTestScreen(),
  SADScreen.routeName: (context) => SADScreen(),
  SADTestScreen.routeName: (context) => SADTestScreen(),
};
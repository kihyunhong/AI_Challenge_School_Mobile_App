import 'package:flutter/cupertino.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/about_us_screen/about_us_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/perplexity_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/gamma_ai_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/notebook_lm_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/suno_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/V0_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/home_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/splash_screen/splash_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/perplexity_quiz_.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/notebookLM_quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/SUNO_quiz.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/v0_quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/home_screen/ai_tools_screen/chatgpt_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/chatgpt_quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/gamma_ai_quiz.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  TestScreen.routeName: (context) => const TestScreen(),
  AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  ChatgptScreen.routeName: (context) => const ChatgptScreen(),
  ChatGPTQuizScreen.routeName: (context) => const ChatGPTQuizScreen(),
  GammaAIScreen.routeName: (context) => const GammaAIScreen(),
  GammaAIQuizScreen.routeName: (context) => const GammaAIQuizScreen(),
  SunoScreen.routeName: (context) => const SunoScreen(),
  SunoQuizScreen.routeName: (context) => const SunoQuizScreen(),
  NotebookLMScreen.routeName: (context) => const NotebookLMScreen(),
  NotebookLMQuizScreen.routeName: (context) => const NotebookLMQuizScreen(),
  V0Screen.routeName: (context) => const V0Screen(),
  V0QuizScreen.routeName: (context) => const V0QuizScreen(),
  PerplexityScreen.routeName: (context) => const PerplexityScreen(),
  PerplexityQuizScreen.routeName: (context) => const PerplexityQuizScreen(),
};

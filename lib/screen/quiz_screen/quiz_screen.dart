import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/perplexity_quiz_.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/gamma_ai_quiz.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/chatgpt_quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/notebookLM_quiz_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/SUNO_quiz.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/v0_quiz_screen.dart';

import '../../constants.dart';
import '../home_screen/home_screen.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  static String routeName = 'TestScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: kUIColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/TIEUM_LOGO.png'),
              ),
              accountName: Text(
                'AI Challenge School',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: Text('TIEUM'),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultPadding),
                    bottomRight: Radius.circular(kDefaultPadding),
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.account_tree),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: const Text(
                'Quiz',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  TestScreen.routeName,
                  (route) => false,
                );
              },
              trailing: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //dividing the screen into two parts
          //fixed height for first half
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Test Your ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w300, fontSize: 30.0),
                        ),
                        sizedBox,
                        Text(
                          'AI SKILLS',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w500, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //other will use all the remaining height of screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, ChatGPTQuizScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-chatgpt-50.png',
                          title: 'ChatGPT',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, GammaAIQuizScreen.routeName);
                          },
                          icon: 'assets/logo/gamma ai logo.png',
                          title: 'GammaAI',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, SunoQuizScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-audio-wave-50.png',
                          title: 'SUNO',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, NotebookLMQuizScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-podcast-50.png',
                          title: 'Notebook LM',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, V0QuizScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-website-50.png',
                          title: 'V0',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, PerplexityQuizScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-perplexity-ai-50.png',
                          title: 'Perplexity',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 7.5,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/SAD_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/covid_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/flu_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/frostbite_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/hypothermia_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/pneumonia_test_screen.dart';

import '../../constants.dart';
import '../about_us_screen/about_us_screen.dart';
import '../home_screen/home_screen.dart';
import '../home_screen/widgets/data.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  static String routeName = 'TestScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/logo/Cherry Orchard (1).png'),
              ),
              accountName: Text(
                'Mindful Frost',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: Text('johnhong1004@gmail.com'),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultPadding),
                    bottomRight: Radius.circular(kDefaultPadding),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: Text(
                'Home',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.account_tree),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: Text(
                'Test',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  TestScreen.routeName,
                  (route) => false,
                );
              },
              trailing: Icon(Icons.navigate_next),
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
            padding: EdgeInsets.all(kDefaultPadding),
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
                          'Test Possible  ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w300, fontSize: 30.0),
                        ),
                        sizedBox,
                        Text(
                          'WINTER DISEASES',
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
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, FluTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-flu-64.png',
                          title: 'Flu',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, CovidTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-coronavirus-50.png',
                          title: 'Coronavirus',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, HypothermiaTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-hypothermia-50.png',
                          title: 'Hypothermia',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, FrostbiteTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-cold-64.png',
                          title: 'Frostbite',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, PneumoniaTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-pneumonia-64.png',
                          title: 'Pneumonia',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, SADTestScreen.routeName);
                          },
                          icon: 'assets/logo/icons8-depression-64.png',
                          title: 'SAD',
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
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
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
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home_screen/home_screen.dart';
import '../quiz_screen/quiz_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static String routeName = 'AboutUsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.question_answer),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: const Text(
                'About us',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AboutUsScreen.routeName,
                      (route) => false,
                );
              },
              trailing: const Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}

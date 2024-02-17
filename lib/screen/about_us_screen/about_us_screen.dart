import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home_screen/home_screen.dart';
import '../test_screen/test_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static String routeName = 'AboutUsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
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
            ListTile(
              leading: Icon(Icons.question_answer),
              iconColor: kSecondaryColor,
              focusColor: kSecondaryColor,
              title: Text(
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
              trailing: Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}

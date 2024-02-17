import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/SAD_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/flu_test_screen.dart';

class SADScreen extends StatelessWidget {
  static String routeName = 'SADScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seasonal Affective Disorder',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('What is seasonal affective disorder(SAD)?'),
              _sectionText(
                  'Seasonal affective disorder, or SAD, is type of depression. It happens during certain seasons of the year—most often fall or winter. It is thought that shorter days and less daylight may trigger a chemical change in the brain leading to symptoms of depression.'),
              _sectionTitle('SAD Symptoms'),
              _sectionText(
                  '1. Persistent sad, anxious, or “empty” mood most of the day\n2. Increased sleep and daytime drowsiness\n3. Loss of interest and pleasure in activities formerly enjoyed\n4. Feelings of guilt, worthlessness, or helplessness\n5. Social withdrawal and increased sensitivity to rejection'),
              _sectionText(
                  '*In most cases, SAD symptoms start in the late fall or early winter and go away during the spring and summer.*'),
              _imageSection(
                  'https://www.horizonviewhealth.com/wp-content/uploads/2018/12/SAD-Comic.png'),
              _sectionTitle('Treating SAD'),
              _sectionText(
                  '1. Exposure to sunlight\n2. Light therapy\n3. Psychotherapy\n4. Antidepressants'),
              _sectionTitle('Preventing SAD'),
              _sectionText(
                  '1. Exercise\n2. Go outside\n3. Reach out to friends\n4. Eat a balanced diet\n5. Drink more water'),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SADTestScreen.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Check if I got SAD'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius as needed
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _sectionText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _imageSection(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Image.network(imageUrl),
    );
  }
}

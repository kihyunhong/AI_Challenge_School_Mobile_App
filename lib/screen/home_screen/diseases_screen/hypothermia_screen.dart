import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/flu_test_screen.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/test_screen/diseases_test_screen/hypothermia_test_screen.dart';

class HypothermiaScreen extends StatelessWidget {
  static String routeName = 'HypothermiaScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Key Facts About Hypothermia',
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
              _sectionTitle('What is hypothermia?'),
              _sectionText(
                  'Hypothermia is caused by prolonged exposures to very cold temperatures. When exposed to cold temperatures, your body begins to lose heat faster than it’s produced. Lengthy exposures will eventually use up your body’s stored energy, which leads to lower body temperature.'),
              _sectionTitle('Hypothermia Symptoms'),
              _sectionText(
                  '1. Shivering\n2. Exhaustion or feeling very tired\n3. Confusion\n4. Fumbling hands\n5. Memory loss\n6. Slurred speech\n7. Drowsiness\n8. Bright red, cold skin (babies)\n9. very low energy (babies)'),
              _sectionText(
                  '*Hypothermia is a medical emergency. Get medical attention immediately!*'),
              _imageSection(
                  'https://www.verywellhealth.com/thmb/nW6TG8apu44SuGnWPpV7gvCeZHo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/hypothermia-overview-4161047_final-58e7d68033884440ba6b407fab0e2277.png'),
              _sectionTitle('Treating Hypothermia'),
              _sectionTitle('When you are not able to get medical help right away:'),
              _sectionText(
                  '1. Get the person into a warm room or shelter.\n2. Remove any wet clothing the person is wearing.\n3. Warm the center of the person’s body—chest, neck, head, and groin—using an electric blanket, if available. You can also use skin-to-skin contact under loose, dry layers of blankets, clothing, towels, or sheets.\n4. After body temperature has increased, keep the person dry and wrap their body, including their head and neck, in a warm blanket.\n5. Get the person proper medical attention as soon as possible.'),
              _sectionTitle('Complications of Flu'),
              _sectionText(
                  '1. Cardiac arrhythmias at temperatures below 30-32°C.\n2. Infection\n3. Aspiration pneumonia\n4. Pulmonary edema\n5. Frostbite'),
              _sectionTitle('Preventing Hypothermia'),
              _sectionText(
                  'Wear warm, multi-layered clothing with good hand and feet protection (avoid overly constricting wrist bands, socks, and shoes). Wear warm headgear. This is particularly important since significant heat is lost through an unprotected head.'),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HypothermiaTestScreen.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Check if I got Hypothermia'),
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
              _sectionText(
                  'For more information, please visit the official website for CDC.'),
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

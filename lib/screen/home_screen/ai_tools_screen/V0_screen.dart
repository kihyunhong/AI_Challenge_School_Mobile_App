import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/v0_quiz_screen.dart';

class V0Screen extends StatelessWidget {
  static String routeName = 'V0Screen';

  const V0Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About V0',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: kUIColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('What is pneumonia?'),
              _sectionText(
                  'Pneumonia is an infection that inflames the air sacs in one or both lungs.'),
              _sectionTitle('Pneumonia Symptoms'),
              _sectionText(
                  '1. Cough\n2. Shortness of breath\n3. A high temperature\n4. Chest pain\n5. An aching body\n6. Loss of appetite\n7. Making wheezing noises when you breathe '),
              _sectionText(
                  '*It is important to note that not everyone with flu will have a fever.*'),
              _imageSection(
                  'https://prod-images-static.radiopaedia.org/images/1371188/0a1f5edc85aa58d5780928cb39b08659c1fc4d6d7c7dce2f8db1d63c7c737234_gallery.jpeg'),
              _sectionTitle('Treating Pneumonia'),
              _sectionTitle('Go to hospital for treatment if:'),
              _sectionText(
                  '1. you are over 65\n 2. you have cardiovascular disease\n 3. you are baby or young child\n 4. you are very unwell'),
              _sectionTitle('Different Antibiotics'),
              _sectionText(
                  '1. Azithromycin\n2. Clarithromycin\n3. Tetracycline\n4. Lefamulin'),
              _sectionTitle('Complications of Pneumonia'),
              _sectionText(
                  '1. Acute respiratory distress syndrome (ARDS)\n2. Lung abscesses\n3. Respiratory failure'),
              _sectionTitle('Preventing Pneumonia'),
              _sectionText(
                  'Washing your hands regularly. Cleaning and disinfecting surfaces that are touched a lot. Coughing or sneezing into a tissue or into your elbow or sleeve. Limiting contact with cigarette smoke or quitting smoking. Taking good care of medical conditions (like asthma, diabetes, or heart disease).'),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, V0QuizScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius as needed
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Go to V0 Quiz'),
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
        style: const TextStyle(
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
        style: const TextStyle(fontSize: 16),
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

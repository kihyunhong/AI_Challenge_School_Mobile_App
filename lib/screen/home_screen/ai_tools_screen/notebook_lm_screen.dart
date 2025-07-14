import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/notebookLM_quiz_screen.dart';

class NotebookLMScreen extends StatelessWidget {
  static String routeName = 'NotebookLMScreen';

  const NotebookLMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About NotebookLM',
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
              _sectionTitle('What is frostbite?'),
              _sectionText(
                  'Frostbite is a type of injury caused by freezing. It leads to a loss of feeling and color in the areas it affects, usually extremities such as the nose, ears, cheeks, chin, fingers, and toes.'),
              _sectionTitle('Frostbite Symptoms'),
              _sectionText(
                  '1. A white or grayish-yellow skin area\n2. Skin that feels unusually firm or waxy\n3. Numbness'),
              _sectionText(
                  '*A person who has frostbite may not know they have it until someone else points it out because the frozen parts of their body are numb.*'),
              _imageSection(
                  'https://ars.els-cdn.com/content/image/1-s2.0-S0020138322005186-gr1.jpg'),
              _sectionTitle('Treating Frostbite'),
              _sectionText(
                  'If (1) a person shows signs of frostbite, but no signs of hypothermia and (2) immediate medical care is not available, do the following:'),
              _sectionText(
                  '1. Get the person into a warm room as soon as possible.\n2. Do not walk on feet or toes that show signs of frostbite—this increases the damage.\n3. Do not rub the frostbitten area with snow or massage it at all.\n4. Put the areas affected by frostbite in warm—not hot—water\n5. Do not use a heating pad, heat lamp, or the heat of a stove, fireplace, or radiator for warming.'),
              _sectionTitle('Complications of Frostbite'),
              _sectionText(
                  '1. Hypothermia\n2. Bacterial wound infections\n3. Sespis'),
              _sectionTitle('Preventing Frostbite'),
              _sectionText(
                  'Taking a first aid or emergency resuscitation (CPR) course is a good way to prepare for health problems related to cold weather. Knowing what to do is an important part of protecting your health and the health of others.'),
              _sectionText(
                'Also Wear appropriate clothing that protects your extremities, such as:\n1. well-insulated boots and a thick pair of well-fitting socks\n2. mittens – they provide better protection against very cold weather than gloves\n 3. a warm, weatherproof hat that covers your ears\n4. multiple thin layers of warm, loose-fitting clothing'
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NotebookLMQuizScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius as needed
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Go to Notebook LM Quiz'),
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

import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/chatgpt_quiz_screen.dart';

class ChatgptScreen extends StatelessWidget {
  static String routeName = 'ChatgptScreen';

  const ChatgptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About ChatGPT',
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
              _sectionTitle('What is influenza (flu)?'),
              _sectionText(
                  'Flu is a contagious respiratory illness caused by influenza viruses that infect the nose, throat, and sometimes the lungs.'),
              _sectionTitle('Flu Symptoms'),
              _sectionText(
                  '1. Fever or feeling feverish\n2. Cough\n3. Sore throat\n4. Runny or stuffy nose\n5. Muscle or body aches\n6. Headaches\n7. Fatigue (tiredness)\n8. Vomiting and diarrhea'),
              _sectionText(
                  '*It is important to note that not everyone with flu will have a fever.*'),
              _imageSection(
                  'https://www.rph.org.nz/public-health-topics/illness-and-disease/influenza/influenza-caring-for-someone-with-flu/flu.png'),
              _sectionTitle('Treating Flu'),
              _sectionTitle('Using Antiviral Drugs'),
              _sectionText(
                  'Here are some FDA-approved antiviral drugs recommended by CDC to treat flu:'),
              _sectionText(
                  '1. Oseltamivir phosphate (Tamiflu)\n2. Zanamivir (Relenza)\n3. Peramivir (Rapivab)\n4. Baloxavir marboxil (Xofluza)'),
              _sectionTitle('Complications of Flu'),
              _sectionText(
                  '1. Sinus and ear infections\n2. Pneumonia\n3. Inflammation of multiple muscles (heart, brain)\n4. Asthma attacks'),
              _sectionTitle('Preventing Flu'),
              _sectionText(
                  'The first and the most important step is to get a flu vaccine each year. CDC also recommends everyday preventive actions (staying away from sick people, covering coughs and sneezes, etc.)'),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ChatGPTQuizScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius as needed
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Go to ChatGPT Quiz'),
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

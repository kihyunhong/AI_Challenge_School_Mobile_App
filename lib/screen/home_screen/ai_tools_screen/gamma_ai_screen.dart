import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';
import 'package:mindful_frost_team_cherry_orchard/screen/quiz_screen/ai_quiz_screen/gamma_ai_quiz.dart';

class GammaAIScreen extends StatelessWidget {
  static String routeName = 'GammaAIScreen';

  const GammaAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About GammaAI',
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
              _sectionTitle('What is coronavirus'),
              _sectionText(
                  'Coronavirus is a disease caused by a virus named SARS-CoV-2. It can be very contagious and spreads quickly. Over one million people have died from COVID-19 in the United States.'),
              _sectionTitle('Coronavirus Symptoms'),
              _sectionText(
                  '1. Fever or chills\n2. Cough\n3. Shortness of breath or difficulty breathing\n4. Sore throat\n5. Congestion or runny nose\n6. Headaches\n7. Fatigue (tiredness)\n8. Vomiting and diarrhea\n9. Muscle or body aches\n10. New loss of taste or smell'),
              _sectionText(
                  '*Symptoms may change with new COVID-19 variants and can vary depending on vaccination status.*'),
              _imageSection(
                  'https://www.un.org/sites/un2.un.org/files/field/image/1583952355.1997.jpg'),
              _sectionTitle('Treating Coronavirus'),
              _sectionTitle('Using Antiviral Drugs'),
              _sectionText(
                  'Here are some FDA-approved antiviral medications used to treat Coronavirus:'),
              _sectionText(
                  '1. Nirmatrelvir with Ritonavir (Paxlovid)\n2. Remdesivir (Veklury)\n3. Molnupiravir (Lagevrio)'),
              _sectionTitle('Complications of Coronavirus'),
              _sectionText(
                  '1. Organ failure in several organs\n2. Pneumonia and trouble breathing\n3. Heart problems\n4. A severe lung condition'),
              _sectionTitle('Preventing Coronavirus'),
              _sectionText(
                  'The first and the most important step is to get a COVID-19 vaccine each year. CDC recommends that everyone who is eligible stay up to date on their COVID-19 vaccines.CDC also recommends everyday preventive actions (staying home and seperating from others, improving ventilation, wear high quality mask around other people, etc.)'),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GammaAIQuizScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius as needed
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Go to GammmaAI Quiz'),
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

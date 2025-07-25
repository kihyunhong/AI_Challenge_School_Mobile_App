import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';

class GammaAIQuizScreen extends StatefulWidget {
  const GammaAIQuizScreen({super.key});
  static String routeName = 'GammaAIQuizScreen';

  @override
  State<GammaAIQuizScreen> createState() => _GammaAIQuizScreenState();
}

class _GammaAIQuizScreenState extends State<GammaAIQuizScreen> {
  bool isChecked1 = false;
  bool isNoChecked1 = false;
  bool isChecked2 = false;
  bool isNoChecked2 = false;
  bool isChecked3 = false;
  bool isNoChecked3 = false;
  bool isChecked4 = false;
  bool isNoChecked4 = false;
  bool isChecked5 = false;
  bool isNoChecked5 = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GammaAI Quiz',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: kUIColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Question 1: Have you experienced any of the following symptoms recently?'),
              const SizedBox(
                height: 8,
              ),
              const Center(
                  child: Text(
                      '1. Fever or chills\n2. Cough\n3. Shortness of breath or difficulty breathing\n4. Sore throat\n5. Congestion or runny nose\n6. Headaches\n7. Fatigue (tiredness)\n8. Vomiting and diarrhea\n9. Muscle or body aches\n10. New loss of taste or smell')),
              Row(
                children: [
                  Checkbox(
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value ?? false;
                          if (isChecked1) {
                            isNoChecked1 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked1 = value ?? false;
                          if (isNoChecked1) {
                            isChecked1 = false;
                          }
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const Text(
                  'Question 2: Have you been in close contact with someone diagnosed with COVID-19 recently?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked2 = value ?? false;
                          if (isChecked2) {
                            isNoChecked2 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked2 = value ?? false;
                          if (isNoChecked2) {
                            isChecked2 = false;
                          }
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const Text('Question 3: Have you received a COVID-19 vaccine this season?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked3 = value ?? false;
                          if (isChecked3) {
                            isNoChecked3 = false;
                          }
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked3 = value ?? false;
                          if (isNoChecked3) {
                            isChecked3 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const Text(
                  'Question 4: Have you experienced a sudden onset of symptoms, typically within a few days?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked4,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked4 = value ?? false;
                          if (isChecked4) {
                            isNoChecked4 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked4,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked4 = value ?? false;
                          if (isNoChecked4) {
                            isChecked4 = false;
                          }
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const Text(
                  'Question 5: Do you have any underlying health conditions that may increase your risk of severe illness from COVID-19, such as diabetes, heart disease, or lung disease?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked5,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked5 = value ?? false;
                          if (isChecked5) {
                            isNoChecked5 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked5,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked5 = value ?? false;
                          if (isNoChecked5) {
                            isChecked5 = false;
                          }
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (count > 3) {
                          showDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Result'),
                                  content: const Text(
                                      'You highly got COVID-19. Get an appropriate medication.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Result'),
                                  content: const Text(
                                      'We still recommend you to visit hospital or do an self-check to check for COVID-19.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'),
                                    )
                                  ],
                                );
                              });
                        }
                      },
                      child: const Text('Submit'))),
            ],
          ),
        ),
      ),
    );
  }
}

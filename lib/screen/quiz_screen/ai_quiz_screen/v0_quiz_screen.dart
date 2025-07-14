import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';

class V0QuizScreen extends StatefulWidget {
  const V0QuizScreen({super.key});
  static String routeName = 'V0QuizScreen';

  @override
  State<V0QuizScreen> createState() => _V0QuizScreenState();
}

class _V0QuizScreenState extends State<V0QuizScreen> {
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
          'V0 Quiz',
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
                      '1. Cough\n2. Shortness of breath\n3. A high temperature\n4. Chest pain\n5. An aching body\n6. Loss of appetite\n7. Making wheezing noises when you breathe')),
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
                  'Question 2: Do you have a persistent or recurrent cough that lingers for several weeks or more?'),
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
              const Text('Question 3: Have you recently had a cold, the flu, or another respiratory infection that seems to have worsened or not improved?'),
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
                  'Question 4: Are you older than 65, or do you have a weakened immune system due to conditions such as HIV/AIDS, cancer treatment, or organ transplantation?'),
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
                  'Question 5: Are you experiencing nausea, vomiting, or diarrhea in addition to respiratory symptoms?'),
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
                                      'You highly got a pneumonia. Get an appropriate medication.'),
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
                                      'We still recommend you to visit hospital to check for pneumonia.'),
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

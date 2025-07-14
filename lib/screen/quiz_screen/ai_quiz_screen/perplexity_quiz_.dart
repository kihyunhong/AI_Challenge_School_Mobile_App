import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';

class PerplexityQuizScreen extends StatefulWidget {
  const PerplexityQuizScreen({super.key});
  static String routeName = 'PerplexityQuizScreen';

  @override
  State<PerplexityQuizScreen> createState() => _PerplexityQuizScreenState();
}

class _PerplexityQuizScreenState extends State<PerplexityQuizScreen> {
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
  bool isChecked6 = false;
  bool isNoChecked6 = false;
  bool isChecked7 = false;
  bool isNoChecked7 = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perplexity Quiz',
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
                  'Question 1: Have you noticed changes in your mood, such as feeling sad, anxious, or irritable, that coincide with changes in seasons, particularly during the fall and winter months?'),
              const SizedBox(
                height: 8,
              ),
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
                  'Question 2: Are you experiencing a loss of interest or pleasure in activities that you typically enjoy?'),
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
              const Text('Question 3: Are you experiencing changes in your sleep patterns, such as difficulty falling asleep, staying asleep, or oversleeping?'),
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
                  'Question 4: Are you feeling sluggish or agitated, with difficulty concentrating or making decisions?'),
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
                  'Question 5: Do you experience feelings of hopelessness, worthlessness, or guilt that are difficult to shake?'),
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
              const Text(
                  'Question 6: Have you experienced thoughts of death or suicide?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked6,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked6 = value ?? false;
                          if (isChecked6) {
                            isNoChecked6 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked6,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked6 = value ?? false;
                          if (isNoChecked6) {
                            isChecked6 = false;
                          }
                        });
                      }),
                  const Text('No'),
                ],
              ),
              const Text(
                  'Question 7: Do you notice improvements in your mood and energy levels as the seasons change, particularly when spring and summer arrive?'),
              Row(
                children: [
                  Checkbox(
                      value: isChecked7,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked7 = value ?? false;
                          if (isChecked7) {
                            isNoChecked7 = false;
                          }
                          count++;
                        });
                      }),
                  const Text('Yes'),
                  Checkbox(
                      value: isNoChecked7,
                      onChanged: (bool? value) {
                        setState(() {
                          isNoChecked7 = value ?? false;
                          if (isNoChecked7) {
                            isChecked7 = false;
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
                        if (count > 4) {
                          showDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Result'),
                                  content: const Text(
                                      'You highly got a SAD. Get an appropriate medication.'),
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
                                      'We still recommend you to visit hospital to check for SAD.'),
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

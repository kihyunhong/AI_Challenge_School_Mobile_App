import 'package:flutter/material.dart';
import 'package:mindful_frost_team_cherry_orchard/constants.dart';

class FrostbiteTestScreen extends StatefulWidget {
  const FrostbiteTestScreen({Key? key}) : super(key: key);
  static String routeName = 'FrostbiteTestScreen';

  @override
  State<FrostbiteTestScreen> createState() => _FrostbiteTestScreenState();
}

class _FrostbiteTestScreenState extends State<FrostbiteTestScreen> {
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
        title: Text(
          'Frostbite Test',
          style: TextStyle(color: kTextWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Question 1: Have you been exposed to extremely cold temperatures or windy conditions recently?'),
              SizedBox(
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text(
                  'Question 2: Are you experiencing numbness or tingling in any part of your body, particularly your fingers, toes, ears, or nose?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text('Question 3: Do you notice any changes in skin color, such as pale or white patches?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text(
                  'Question 4: Does the skin feel unusually firm or waxy to the touch?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text(
                  'Question 5: Are you experiencing any difficulty moving or using the affected body part?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text(
                  'Question 6: Have you noticed any signs of tissue damage, such as blackening or darkening of the skin?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              Text(
                  'Question 7: Are you experiencing pain, burning, or throbbing sensations in the affected area?'),
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
                  Text('Yes'),
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
                  Text('No'),
                ],
              ),
              SizedBox(
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
                                  title: Text('Result'),
                                  content: Text(
                                      'You highly got a frostbite. Get an appropriate medication.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
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
                                  title: Text('Result'),
                                  content: Text(
                                      'We still recommend you to visit hospital to check for frostbite.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    )
                                  ],
                                );
                              });
                        }
                      },
                      child: Text('Submit'))),
            ],
          ),
        ),
      ),
    );
  }
}

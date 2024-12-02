import 'package:flutter/material.dart';
import 'package:gym/pages/Abs.dart';
import 'package:gym/pages/Back.dart';
import 'package:gym/pages/Biceps.dart';
import 'package:gym/pages/Chest.dart';
import 'package:gym/pages/Legs.dart';
import 'package:gym/pages/Triceps.dart';
import 'package:gym/utils/AppStyles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.97,
            child: Center(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 502,
                    height: 194,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  'Workout Lists',
                                  style: Styles.headlinestyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Text(
                                '    #1 Gym In Lebanon',
                                textAlign: TextAlign.center,
                                style: Styles.headlinestyle2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Distribute space evenly
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Triceps()),
                                  );
                                },
                                child: Container(
                              margin: const EdgeInsets.all(4),
                              height: 175,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.8),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TRICEPS', // Replace with static text
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/image/tricepss.png',
                                    width: 220,
                                    height: 145,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            )),
                            InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Legs()),
                                  );
                                },
                                child: Container(
                              margin: const EdgeInsets.all(4),
                              height: 175,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.8),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'LEGS', // Replace with static text
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/image/legs.jpg',
                                    width: 220,
                                    height: 145,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => Back()),
                                    );
                                  },
                                  child: Container(
                                margin: const EdgeInsets.all(4),
                                height: 175,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.8),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BACK', // Replace with static text
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/image/back.png',
                                      width: 220,
                                      height: 145,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              )),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => Abs()),
                                    );
                                  },
                                  child: Container(
                                margin: const EdgeInsets.all(4),
                                height: 175,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.8),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ABS', // Replace with static text
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/image/ABS.jpg',
                                      width: 220,
                                      height: 145,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => Chest()),
                                    );
                                  },
                                  child: Container(
                                margin: const EdgeInsets.all(4),
                                height: 175,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.8),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CHEST', // Replace with static text
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/image/chest.jpg',
                                      width: 220,
                                      height: 145,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              )),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Biceps()),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    height: 175,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 255, 255, 255)
                                          .withOpacity(0.8),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Column(
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'BICEPS', // Replace with static text
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          'assets/image/biceps.png',
                                          width: 220,
                                          height: 145,
                                          fit: BoxFit.contain,
                                        ),
                                        const SizedBox(height: 5),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]))),
      ),
    );
  }
}

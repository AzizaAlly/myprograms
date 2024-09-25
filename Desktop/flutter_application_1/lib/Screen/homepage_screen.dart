import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/real_models.dart';
import 'package:flutter_application_1/Screen/onboarding_screen.dart';
import 'package:flutter_application_1/Screen/screen_text.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromARGB(215, 243, 239, 239)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ScreenText(
                  color: const Color.fromARGB(255, 173, 171, 171),
                  name: "Location",
                  size: 14,
                  weight: 300,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnboardingScreen(),
                          )),
                      child: const Icon(
                        CupertinoIcons.location_solid,
                        color: Colors.red,
                        size: 17,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ScreenText(
                        name: "Dodoma,Tanzania",
                        size: 16,
                        weight: 300,
                        color: Colors.black),
                  ),
                  const Icon(
                    CupertinoIcons.chevron_down,
                    size: 15,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: const Color.fromARGB(255, 252, 250, 250)),
                        child: const Icon(
                          CupertinoIcons.search,
                          size: 24,
                        )),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: const Color.fromARGB(255, 255, 251, 251)),
                      child: const Icon(
                        CupertinoIcons.bell,
                        size: 24,
                      )),
                ],
              ),
              Row(
                children: [
                  ScreenText(
                      name: "Best places",
                      size: 16,
                      weight: 400,
                      color: Colors.black),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(78, 209, 191, 191)),
                    child: Center(
                        child: ScreenText(
                            name: " All Categories",
                            size: 14,
                            weight: 300,
                            color: const Color.fromARGB(255, 41, 39, 39))),
                  )
                ],
              ),
              const SizedBox(height: 5), // Add space between categories and list
              Expanded(
                // Use ListView.builder for better performance
                child: ListView.builder(
                  itemCount: RealModelsData.realdata.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Stack(
                        children: [
                           Container(
                          height: 400,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              RealModelsData.realdata[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                             Padding(
                               padding: const EdgeInsets.all(20),
                               child: Container(
                                                   height: 40,
                                                   width: 120,
                                                   decoration: BoxDecoration(
                                                       borderRadius: BorderRadius.circular(50),
                                                       color: Colors.black,),
                                                   child: Center(
                                                       child: ScreenText(
                                                           name: " Tsh.200k/month",
                                                           size: 14,
                                                           weight: 300,
                                                           color:  Colors.white),)
                                                 ),
                             )
                ],
                          
                        )
                        ]
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


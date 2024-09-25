import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/real_models.dart';
import 'package:flutter_application_1/Screen/homepage_screen.dart';
import 'package:flutter_application_1/Screen/screen_text.dart';


class OnboardingScreen extends StatefulWidget {
   const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
 
}
class _OnboardingScreenState extends State<OnboardingScreen> {
PageController pageController = PageController();
int currentpage=0;
//  final data=[
//     { "image": ("assets/house2.jpg")},
//       {"image": ("assets/house3.jpg")},
//       {"image": ("assets/house4.jpg")},
//     {  "image": ("assets/house5.jpg")},
      
//   ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(232, 243, 240, 240),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView.builder(

                         controller: pageController,
                    onPageChanged: (value) => setState(() {
                      currentpage = value;
                    }),
                    
                     itemCount: RealModelsData.realdata.length,
                      itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                            )),
                            
                            
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50)),
                          child: Image.asset(RealModelsData.realdata[index].image,fit: BoxFit.cover,)
                          ),
                        
                        )),
                  ),
                  
                   Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const SizedBox(height: 5,),
                    
                  
                   for (int i = 0; i < RealModelsData.realdata.length; i++) ...[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: GestureDetector(
                                  onTap: () => setState(() {
                                  pageController.animateToPage(i, duration:  const Duration(milliseconds: 200), curve:Curves.fastEaseInToSlowEaseOut);
                                  }),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 500),
                                    height: 5,
                                    width: i == currentpage ? 34: 15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color:i==currentpage?  Colors.red:const Color.fromARGB(213, 228, 148, 124)),
                                  ),
                                ),
                              ),
                            ],
                    ],
                    ),
                
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: "Finding The Place  \n Of ", // Normal text
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Your Dreams", // Red colored text
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ScreenText(
                            name:
                                "find the best place you want to rent here \n and make it the best experience for you",
                            size: 16,
                            weight: 300,
                            color: const Color.fromARGB(216, 0, 0, 0)),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 45,
                            width: 400,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(240, 0, 0, 0),
                                borderRadius: BorderRadius.circular(50)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomepageScreen(),)),
                                  child: ScreenText(
                                      name: "Get Started",
                                      size: 16,
                                      weight: 300,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // const Spacer(),
                        // const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,bottom: 10),
                          child: ScreenText(
                              name:
                                  "By Continuing the Journey  you have to agree  \n    with  our Terms of Condition & Privacy",
                              size: 16,
                              weight: 300,
                              color: const Color.fromARGB(192, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                )
              ]
            )
              ],
            ),
        );
  
  }
}

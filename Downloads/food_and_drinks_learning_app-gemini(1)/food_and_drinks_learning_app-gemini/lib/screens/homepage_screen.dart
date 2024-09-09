import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<String> words = [
    "All",
    "Breakfast",
    "Lunch",
    "Everning",
    "Sapa",
    "Dinner"
  ];
  int currentBtn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/food3.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: double.infinity,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(CupertinoIcons.search),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8),
                    child: Text(
                      "What will we\ncook today?",
                      style: GoogleFonts.alice(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: words.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () => setState(() {
                            currentBtn = index;
                          }),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            clipBehavior: Clip.hardEdge,
                            constraints: const BoxConstraints(minWidth: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: currentBtn == index
                                    ? const Color.fromARGB(255, 130, 255, 12)
                                    : Colors.white.withOpacity(0.2)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                  sigmaX: currentBtn == index ? 0 : 24,
                                  sigmaY: currentBtn == index ? 0 : 24),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                  child: Text(words[index],
                                      style: GoogleFonts.alice(
                                          textStyle: TextStyle(
                                              color: currentBtn == index
                                                  ? const Color.fromARGB(
                                                      255, 0, 0, 0)
                                                  : Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500))),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0)
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 250,
                                    width: 410,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(48, 45, 46, 46)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(34),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Positioned(
                                      top: 100,
                                      child: Image.asset(
                                        "assets/image4.png",
                                        height: 250,
                                        width: 150,
                                        alignment: AlignmentDirectional.topCenter,
                                      )),
                                ),
                                const Spacer(),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 110),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Icon(
                                            CupertinoIcons.chevron_left,
                                            color: Colors.white,
                                            
                                          ),
                                        ),
                                        Spacer(),
                                        Spacer(),
                                         Spacer(),
                                         Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Icon(
                                            CupertinoIcons.chevron_right,
                                            color: Colors.white,
                                            
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140.0,right: 38),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Quick Lunch",
                                              style: GoogleFonts.alice(
                                                textStyle: const TextStyle(
                                                    color: Colors.white),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                        Center(
                                            child: Text(
                                          "Includes  tomato,bread,\nvegetables and lemon",
                                          style: GoogleFonts.alice(
                                            textStyle: const TextStyle(
                                                color: Colors.white),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                  const Spacer(),
                  const Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Container(
                      height: 60,
                      width: 280,
                      clipBehavior: Clip.hardEdge,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(75, 74, 75, 73),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 24,sigmaY: 24),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black),
                                child: const Icon(
                                  CupertinoIcons.home,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Home",
                                style: GoogleFonts.alice(
                                  // ignore: prefer_const_constructors
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:
                                        const Color.fromARGB(57, 158, 158, 158)),
                                child: const Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:
                                        const Color.fromARGB(50, 158, 158, 158)),
                                child: const Icon(
                                  CupertinoIcons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

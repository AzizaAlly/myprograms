import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_studies/screens/slugs_screen.dart';

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
  final data = [
    {"name1": "What will we\n cook today?", 
    "image1": "assets/image4.png"},
    {
      "name1": "Very delicious \n favourable food",
      "image1": "assets/pizza1.png"
    },
    {
      "name1": "Cheap and affordable\n everywhere",
      "image1": "assets/pizza3.png"
    },
    {
      "name1": "Healthly and more \n easy to cook",
      "image1": "assets/food1.png"
    },
  ];
  PageController pageController = PageController();
  int pageno = 0;
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
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SlugsScreen())),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                    image: AssetImage("assets/home.jpg"),
                                    fit: BoxFit.cover)),
                          ),
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
                              borderRadius: BorderRadius.circular(0)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2.2,
                              
                              child: PageView.builder(
                                controller: pageController,
                                itemCount: data.length,
                                onPageChanged: (value) => setState(() {
                                  pageno = value;
                                }),
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Container(
                                        width: 500,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                                  48, 45, 46, 46)
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(34),
                                        ),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Image.asset(
                                                data[index]["image1"]!,
                                                height: 200,
                                                width: 200,
                                                fit: BoxFit.contain,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("Quick Lunch",
                                                  style: GoogleFonts.alice(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ),
                                            const Spacer(),
                                            Center(
                                                child: Text(
                                              data[index]["name1"]!,
                                              style: GoogleFonts.alice(
                                                textStyle: const TextStyle(
                                                    color: Colors.white),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 12.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  pageController.animateToPage(pageno-1, duration: const Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
                                                },
                                                child: const Icon(CupertinoIcons.chevron_back, color: Colors.white,)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 24.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  pageController.animateToPage(pageno+1, duration: const Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
                                                },
                                                child: const Icon(CupertinoIcons.chevron_forward, color: Colors.white,)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
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
                                    color: const Color.fromARGB(
                                        57, 158, 158, 158)),
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
                                    color: const Color.fromARGB(
                                        50, 158, 158, 158)),
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

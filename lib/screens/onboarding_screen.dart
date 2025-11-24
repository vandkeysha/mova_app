import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> images = [
    "assets/images/image_onboarding.png",
    "assets/onboarding/bg2.jpg",
    "assets/onboarding/bg3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND SLIDER
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),

          // GRADIENT OVERLAY BIAR TEKS NYA KELIATAN
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xFF0F0F12),
                    Color(0xFF0F0F12),
                  ],
                ),
              ),
            ),
          ),

          // CONTENT BAGIAN BAWAH
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Text(
                    "Welcome to Mova",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 8),
                   Text(
                    "The best movie streaming app of the century\nto make your days great!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                   SizedBox(height: 20),

                  // DOT INDICATOR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 10,
                        width: _currentIndex == index ? 25 : 10,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? Colors.redAccent
                              : Colors.white38,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),

          // untuk button pindah ke login screen
          Positioned(
            bottom: 20,
            left: 25,
            right: 25,
            child: GestureDetector(
              onTap: () {
                // TODO: Pindah ke login
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

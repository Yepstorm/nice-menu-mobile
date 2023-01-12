import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nice_menu_mobile/screens/login/signin.dart';
import 'package:nice_menu_mobile/widgets/button_widget.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const OnboardingScreen(
      image: 'assets/images/onboarding1.png',
      text: 'Amazing food at \nyour door step',
    ),
    const OnboardingScreen(
      image: 'assets/images/onboarding2.png',
      text: 'Payments are safe \nand secured',
    ),
    const OnboardingScreen(
      image: 'assets/images/onboarding3.png',
      text: 'Quick and swift \ndelivery',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Expanded(child: _screens[_currentIndex]),
            Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.05),
              child: DotsIndicator(
                dotsCount: _screens.length,
                position: _currentIndex.toDouble(),
                decorator: DotsDecorator(
                    size: const Size.square(8.0),
                    activeSize: const Size(36.0, 8.0),
                    color: Color.fromARGB(136, 54, 28, 28),
                    activeColor: Color.fromARGB(221, 177, 11, 11),
                    spacing: const EdgeInsets.all(4.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Container(
              width: screenSize.width,
              // height: screenSize.height * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonWidget1(
                      buttonText: 'Next',
                      onTap: () {
                        if (_currentIndex == _screens.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        } else {
                          setState(() {
                            _currentIndex =
                                (_currentIndex + 1) % _screens.length;
                          });
                        }
                      }),
                  Gap(10),
                  ButtonWidget2(
                    buttonText2: 'Skip',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final String image;
  final String text;

  const OnboardingScreen({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(text),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is the home page!'),
      ),
    );
  }
}

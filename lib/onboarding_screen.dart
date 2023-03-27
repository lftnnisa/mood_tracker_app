import 'package:flutter/material.dart';
import 'package:mood_tracker_flutter/intro_screens/intro_page1.dart';
import 'package:mood_tracker_flutter/intro_screens/intro_page2.dart';
import 'package:mood_tracker_flutter/intro_screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  // controller to keep track of which page we're on
  final PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 41, 109, 100),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          // dot indicators
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                      'skip',
                      style: TextStyle(
                        height: 2,
                        color: Color.fromRGBO(102, 104, 255, 100),
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                    ),
                  ),
                ),

                // dot indicators
                SmoothPageIndicator(controller: _controller, count: 3),

                //next or done
                onLastPage
                  ? GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(59, 61, 161, 100),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(59, 61, 161, 100),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:fellow4u/pages/intro_screens/intro_page_1.dart';
import 'package:fellow4u/pages/intro_screens/intro_page_2.dart';
import 'package:fellow4u/pages/intro_screens/intro_page_3.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              scrollDirection: Axis.vertical,
              controller: _controller,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                IntroPage1(
                  controller: _controller,
                ),
                IntroPage2(
                  controller: _controller,
                ),
                IntroPage3(),
              ]),
          Container(
              alignment: Alignment(0, 0.6),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                    dotHeight: 3,
                    dotColor: AppColors.colorTextDarker,
                    activeDotColor: AppColors.primary),
              ))
        ],
      ),
    );
  }
}

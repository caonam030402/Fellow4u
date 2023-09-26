import 'package:fellow4u/components/button.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 520,
              child: Stack(
                children: [
                  Positioned(
                      top: 40,
                      child: SvgPicture.asset('assets/svgs/vt_screen_3.svg'))
                ],
              )),
          Column(
            children: [
              Text(
                'Create a trip and get offers',
                style:
                    AppText.heading2.copyWith(color: AppColors.colorTextDarker),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 61),
                child: Text(
                  'Fellow4U helps you save time and get offers from hundred local guides that suit your trip.',
                  style: AppText.body1.copyWith(color: AppColors.colorTextDark),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Button(
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.login),
            text: 'GET STARTED',
          )
        ],
      ),
    );
  }
}

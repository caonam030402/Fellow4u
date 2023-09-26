import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage1 extends StatelessWidget {
  final controller;
  const IntroPage1({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Container(
            height: 520,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 40,
                  child: SvgPicture.asset('assets/svgs/vt_shape_1.svg'),
                ),
                Positioned(
                  right: 30,
                  top: 180,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svgs/vt_women.svg'),
                      SvgPicture.asset('assets/svgs/vt_man.svg')
                    ],
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 100,
                  child: SvgPicture.asset('assets/svgs/vt_clould.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: Column(
              children: [
                Text(
                  'Find a local guide easily',
                  style: AppText.heading2
                      .copyWith(color: AppColors.colorTextDarker),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 61),
                  child: Text(
                    'With Fellow4U, you can find a local guide for you trip easily and explore as the way you want.',
                    style:
                        AppText.body1.copyWith(color: AppColors.colorTextDark),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text('SKIP',
                    style: AppText.caption
                        .copyWith(color: AppColors.colorTextDark)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

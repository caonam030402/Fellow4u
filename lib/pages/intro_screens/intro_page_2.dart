import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage2 extends StatelessWidget {
  final controller;
  const IntroPage2({super.key, this.controller});

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
                  top: 80,
                  child: SvgPicture.asset('assets/svgs/vt_shape_2.svg',
                      width: 400),
                ),
                Center(
                  child:
                      SvgPicture.asset('assets/svgs/vt_girl.svg', width: 350),
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
                  'Many tours around the world',
                  style: AppText.heading2
                      .copyWith(color: AppColors.colorTextDarker),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 61),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
                        2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text('SKIP',
                      style: AppText.caption
                          .copyWith(color: AppColors.colorTextDark))),
            ),
          )
        ]),
      ),
    );
  }
}

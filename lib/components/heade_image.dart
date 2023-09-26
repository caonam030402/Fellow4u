import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderImage extends StatelessWidget {
  final String title;
  const HeaderImage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/im_dragon_bridge.png'))),
        ),
        Positioned(
            left: 16,
            bottom: 20,
            child: Text(
              title,
              style: AppText.heading1.copyWith(color: AppColors.white),
            )),
        Positioned(
            right: 24,
            top: 48,
            child: Container(
              padding: EdgeInsets.all(7),
              width: 30,
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.3),
                  shape: BoxShape.circle),
              height: 30,
              child:
                  SvgPicture.asset(AppIcons.ic_search, color: AppColors.white),
            ))
      ],
    );
  }
}

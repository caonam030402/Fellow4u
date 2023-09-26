import 'package:fellow4u/configs/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.ic_star),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(AppIcons.ic_star),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(AppIcons.ic_star),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(AppIcons.ic_star),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(AppIcons.ic_star)
      ],
    );
  }
}

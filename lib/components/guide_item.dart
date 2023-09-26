import 'package:fellow4u/components/rating.dart';
import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:fellow4u/testData/best_guides_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GuideItem extends StatelessWidget {
  final Guide bestGuide;
  const GuideItem({super.key, required this.bestGuide});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 164,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage(bestGuide.image), fit: BoxFit.cover)),
            ),
            Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Rating(),
                    Text(
                      '${bestGuide.review} Reviews',
                      style: TextStyle(fontSize: 10, color: AppColors.white),
                    )
                  ],
                ))
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          bestGuide.name,
          style: AppText.body1.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcons.ic_location_fill),
            SizedBox(
              width: 6,
            ),
            Text(
              bestGuide.location,
              style: AppText.caption,
            )
          ],
        )
      ],
    );
  }
}

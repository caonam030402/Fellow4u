import 'package:fellow4u/components/rating.dart';
import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:fellow4u/testData/top_journey_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TourItem extends StatelessWidget {
  final TopJourney tour;
  const TourItem({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 14,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(children: [
        Stack(
          children: [
            Container(
                height: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.vertical(
                        top: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(tour.image), fit: BoxFit.cover))),
            Positioned(
                right: 12, top: 12, child: SvgPicture.asset(AppIcons.ic_label)),
            Positioned(
                bottom: 12,
                left: 12,
                child: Row(
                  children: [
                    Rating(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${tour.like} likes',
                      style: TextStyle(fontSize: 12, color: AppColors.white),
                    )
                  ],
                ))
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tour.name,
                    style: AppText.body1.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset(AppIcons.ic_like)
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.ic_calendar),
                  const SizedBox(
                    width: 9,
                  ),
                  Text(
                    tour.date,
                    style: AppText.caption,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.ic_clock),
                      const SizedBox(
                        width: 9,
                      ),
                      Text(
                        '${tour.day} days',
                        style: AppText.caption,
                      )
                    ],
                  ),
                  Text(
                    '\$${tour.price}',
                    style: AppText.body1.copyWith(
                        color: AppColors.primary, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

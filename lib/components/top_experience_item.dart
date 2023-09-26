import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:fellow4u/testData/top_experiences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopExperienceItem extends StatelessWidget {
  final Experience topExperience;
  const TopExperienceItem({super.key, required this.topExperience});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 206,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 259,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 14,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    image: DecorationImage(
                        image: AssetImage(topExperience.image),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  bottom: 16,
                  left: 16,
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primary,
                              width: 4,
                            ),
                            image: DecorationImage(
                                image: AssetImage(topExperience.avatar))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: AppColors.primary),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Text(
                          topExperience.name,
                          style: AppText.body1.copyWith(color: AppColors.white),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '2 Hour Bicycle Tour exploring Hoian',
            style: AppText.body1.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset(AppIcons.ic_location_fill),
              SizedBox(
                width: 5,
              ),
              Text(
                topExperience.location,
                style: AppText.caption.copyWith(color: AppColors.primary),
              )
            ],
          )
        ],
      ),
    );
  }
}

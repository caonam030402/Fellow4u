import 'package:fellow4u/components/guide_item.dart';
import 'package:fellow4u/components/title_section.dart';
import 'package:fellow4u/components/top_experience_item.dart';
import 'package:fellow4u/components/top_journey_item.dart';
import 'package:fellow4u/components/tour_item.dart';
import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:fellow4u/testData/best_guides_data.dart';
import 'package:fellow4u/testData/top_experiences.dart';
import 'package:fellow4u/testData/top_journey_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
        physics: const ScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                  child: Stack(children: [
                    Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/im_dragon_bridge.png'),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Explore',
                            style: AppText.heading1
                                .copyWith(color: AppColors.white),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('Da Nang',
                                      style: AppText.helperText.copyWith(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.cloud_outlined,
                                      color: AppColors.white),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '260C',
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          decoration: ShapeDecoration(
                            color: AppColors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 12,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.ic_search),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                  child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: AppText.body1,
                                    hintText:
                                        'Hi, where do you want to explore?'),
                              ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Column(
                children: [
                  const TitleSection(
                      title: 'Top Journeys', buttonSeeMore: false),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 275,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        TopJourney journy = topJourneys[index];
                        return TopJourneyItem(
                          journey: journy,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const Padding(padding: EdgeInsets.only(right: 16)),
                      scrollDirection: Axis.horizontal,
                      itemCount: topJourneys.length,
                    ),
                  ),
                ],
              ),
            ],
          )),
          const SliverToBoxAdapter(
            child: TitleSection(title: 'Best Guides'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                Guide bestGuide = bestGuides[index];
                return GuideItem(
                  bestGuide: bestGuide,
                );
              }, childCount: bestGuides.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.78),
            ),
          ),
          const SliverToBoxAdapter(
            child: TitleSection(title: 'Top Experiences', buttonSeeMore: false),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 340,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        Experience experience = topExperiences[index];
                        return TopExperienceItem(
                          topExperience: experience,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const Padding(padding: EdgeInsets.only(right: 16)),
                      scrollDirection: Axis.horizontal,
                      itemCount: topExperiences.length,
                    ),
                  ),
                ],
              ),
            ],
          )),
          const SliverToBoxAdapter(
            child: TitleSection(title: 'Featured Tours'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            TopJourney journey = topJourneys[index];
            return Padding(
              padding: EdgeInsets.only(
                  top: index == 0 ? 0 : 16, right: 16, left: 16),
              child: TourItem(tour: journey),
            );
          }, childCount: 4)),
        ],
      ),
    );
  }
}

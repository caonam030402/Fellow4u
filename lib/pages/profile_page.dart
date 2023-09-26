import 'package:fellow4u/components/my_jouney_item.dart';
import 'package:fellow4u/components/title_section.dart';
import 'package:fellow4u/configs/app_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 230,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/temps/image5.png'),
                              fit: BoxFit.cover)),
                      height: 156,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(AppIcons.ic_setting),
                          const SizedBox(
                            height: 40,
                          ),
                          SvgPicture.asset(AppIcons.ic_camera)
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/emmy.png'))),
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: AppColors.white,
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                          AppIcons.ic_camera,
                                          color: AppColors.primary),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yoo Jin',
                                  style: AppText.heading2
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'yoojin@gmail.com',
                                  style: AppText.body1
                                      .copyWith(color: AppColors.gray),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
              TitleSection(title: 'My Photos'),
              Container(
                height: 260,
                child: GridView.custom(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    repeatPattern: QuiltedGridRepeatPattern.same,
                    pattern: [
                      QuiltedGridTile(1, 2),
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/temps/photo2.jpg'))),
                    ),
                    childCount: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: TitleSection(title: 'My Journeys'),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => (Padding(
                      padding: EdgeInsets.only(
                          top: index == 0 ? 0 : 16, right: 16, left: 16),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: MyJouneyItem(),
                      ),
                    )),
                childCount: 4)),
      ],
    );
  }
}

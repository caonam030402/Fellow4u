import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyJouneyItem extends StatelessWidget {
  const MyJouneyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 16,
          offset: Offset(0, 0),
          spreadRadius: 0,
        )
      ], borderRadius: BorderRadius.circular(10), color: AppColors.white),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(),
            height: 250,
            child: GridView.custom(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(0),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(1, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(index == 0 ? 16 : 0),
                          topRight: Radius.circular(index == 0 ? 16 : 0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/temps/photo2.jpg'))),
                ),
                childCount: 3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'A memory in Danang',
                      style:
                          AppText.body1.copyWith(fontWeight: FontWeight.w500),
                    ),
                    SvgPicture.asset(
                      AppIcons.ic_more_nobg,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.ic_location_fill,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Danang, Vietnam',
                      style: AppText.caption.copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jan 20, 2020',
                      style: AppText.caption
                          .copyWith(color: AppColors.colorTextDark),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.ic_like),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '234 Likes',
                          style: AppText.helperText
                              .copyWith(color: AppColors.colorTextDark),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

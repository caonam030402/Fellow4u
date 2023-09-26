import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TripItem extends StatelessWidget {
  const TripItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 14,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 134,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/temps/photo2.jpg'))),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.ic_location_fill,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Hanoi,VietNam',
                      style: AppText.caption.copyWith(color: AppColors.white),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 16, right: 16, child: SvgPicture.asset(AppIcons.ic_more))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ho Guom Trip',
                          style: AppText.body1,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.ic_calendar),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Feb 2, 2020',
                              style: AppText.caption
                                  .copyWith(color: AppColors.colorTextDark),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.ic_clock),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '8:00 - 10:00',
                              style: AppText.caption
                                  .copyWith(color: AppColors.colorTextDark),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.ic_user_line, width: 14),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Emmy',
                              style: AppText.caption
                                  .copyWith(color: AppColors.colorTextDark),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primary,
                            width: 4,
                          ),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/emmy.png"))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.primary,
                          side: BorderSide(width: 1, color: AppColors.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.ic_detail,
                          width: 16,
                          color: AppColors.primary,
                        ),
                        label: Text('Detail')),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.primary,
                          side: BorderSide(width: 1, color: AppColors.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.ic_chat,
                          width: 16,
                          color: AppColors.primary,
                        ),
                        label: Text('Chat')),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.primary,
                          side: BorderSide(width: 1, color: AppColors.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.ic_pay,
                          width: 16,
                          color: AppColors.primary,
                        ),
                        label: Text('Pay'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

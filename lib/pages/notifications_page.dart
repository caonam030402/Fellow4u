import 'package:fellow4u/components/heade_image.dart';
import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HeaderImage(title: 'Notifications'),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => (Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 2, bottom: 2, right: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/emmy.png'))),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.secondary),
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                            AppIcons.ic_location_line,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Tuan Tran accepted your request for the trip in Danang, Vietnam on Jan 20, 2020',
                                      style: AppText.caption,
                                    ),
                                  ),
                                  Text(
                                    'Jan 16',
                                    style: AppText.helperText.copyWith(
                                        color: AppColors.colorTextDark),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Divider(
                            thickness: 0.5,
                          ),
                        )
                      ],
                    )),
                childCount: 4))
      ],
    );
  }
}

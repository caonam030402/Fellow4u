import 'package:fellow4u/components/heade_image.dart';
import 'package:fellow4u/components/search.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HeaderImage(title: 'Chat'),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Search(),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 4,
          (context, index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 5, bottom: 5, right: 16),
                child: (Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/emmy.png'))),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tuan Tran',
                              style: AppText.body1,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'It’s a beautiful place',
                              style: AppText.body2
                                  .copyWith(color: AppColors.colorTextDark),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '10:30 AM',
                          style: AppText.caption
                              .copyWith(color: AppColors.colorTextDark),
                        )
                      ],
                    )
                  ],
                )),
              ),
              const Divider(
                thickness: 0.5,
              )
            ],
          ),
        ))
      ],
    );
  }
}

import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final bool buttonSeeMore;
  const TitleSection(
      {super.key, required this.title, this.buttonSeeMore = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    AppText.heading2.copyWith(color: AppColors.colorTextDarker),
              ),
              buttonSeeMore
                  ? TextButton(
                      onPressed: () {},
                      child: Text(
                        'SEE MORE',
                        style: AppText.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500),
                      ))
                  : Text('')
            ],
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

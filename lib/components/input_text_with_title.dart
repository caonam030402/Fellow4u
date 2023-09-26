import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';

class InputTextWithTitle extends StatelessWidget {
  final title;
  const InputTextWithTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppText.body2.copyWith(fontWeight: FontWeight.w500),
        ),
        TextField(
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary)),
              hintText: title,
              hintStyle: TextStyle(fontSize: 16, color: AppColors.gray)),
        ),
      ],
    );
  }
}

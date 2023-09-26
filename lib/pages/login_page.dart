import 'package:fellow4u/components/button.dart';
import 'package:fellow4u/components/clippart_header.dart';
import 'package:fellow4u/components/input_text_with_title.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ClipPathHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign In',
                        style: AppText.heading1,
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Welcome back, Yoo Jin',
                        style:
                            AppText.heading2.copyWith(color: AppColors.primary),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      const InputTextWithTitle(
                        title: 'Email',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const InputTextWithTitle(
                        title: 'Password',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Forgot Password',
                        style: AppText.caption
                            .copyWith(color: AppColors.colorTextDark),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Button(
                    text: 'SIGN IN',
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    }),
              ],
            ),
            Column(
              children: [
                Text(
                  'or sign in with',
                  style: AppText.helperText
                      .copyWith(color: AppColors.colorTextDark),
                ),
                const SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svgs/ic_facebook.svg'),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/svgs/ic_talk.svg'),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/svgs/ic_line.svg')
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: AppText.caption.copyWith(color: AppColors.gray),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.register);
                        },
                        child: Text(
                          'Sign Up',
                          style: AppText.caption
                              .copyWith(color: AppColors.primary),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

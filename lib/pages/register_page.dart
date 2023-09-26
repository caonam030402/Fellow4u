import 'package:fellow4u/components/button.dart';
import 'package:fellow4u/components/clippart_header.dart';
import 'package:fellow4u/components/input_text_with_title.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                        'Sign Up',
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
                      const Row(
                        children: [
                          Expanded(
                            child: InputTextWithTitle(
                              title: 'First Name',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: InputTextWithTitle(
                              title: 'Last Name',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const InputTextWithTitle(
                        title: 'Country',
                      ),
                      const SizedBox(
                        height: 24,
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
                        height: 24,
                      ),
                      const InputTextWithTitle(
                        title: 'Confirm Password',
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, bottom: 0),
                  child: Text.rich(TextSpan(
                      style: AppText.helperText.copyWith(
                        color: AppColors.colorTextDark,
                      ),
                      children: [
                        const TextSpan(
                          text: 'By Signing Up, you agree to our',
                        ),
                        const TextSpan(
                          style: TextStyle(
                            color: AppColors.primary,
                          ),
                          text: ' Terms & Conditions',
                        ),
                      ])),
                ),
                Button(text: 'SIGN UP', onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppText.caption.copyWith(color: AppColors.gray),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.login);
                        },
                        child: Text(
                          'Sign In',
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

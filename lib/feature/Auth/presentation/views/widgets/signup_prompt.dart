import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({super.key, this.onSignUpTap});
  final VoidCallback? onSignUpTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: "Don't have an account? ",
          color: Constant.kSubTittle,
          size: 20,
          fontWeight: FontWeight.w400,
        ),
        GestureDetector(
          onTap: onSignUpTap,
          child: const CustomText(
            text: "Sign up",
            color: Constant.kLinkColor,
            size: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

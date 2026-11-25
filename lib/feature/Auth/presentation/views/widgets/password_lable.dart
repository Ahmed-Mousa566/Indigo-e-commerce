import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class PasswordLable extends StatelessWidget {
  const PasswordLable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomText(
          text: "Password",
          color: Colors.black,
          size: 16,
          fontWeight: FontWeight.w500,
        ),
        Spacer(),
        CustomText(
          text: "Forget Password?",
          color: Constant.kPrimaryColor,
          size: 16,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}




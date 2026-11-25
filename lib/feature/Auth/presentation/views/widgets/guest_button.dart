import 'package:e_commerce/core/app_router.dart';
import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GuestButton extends StatelessWidget {
  const GuestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).go(AppRouter.kHomeView),
      child: const Center(
        child: CustomText(
          text: "Continue as Guest",
          color: Constant.kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

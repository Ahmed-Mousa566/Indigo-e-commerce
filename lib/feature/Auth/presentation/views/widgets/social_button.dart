import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icon, this.ontap});
  final String icon;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Constant.kDivider),
        ),
        child: Center(child: Image.asset(icon, width: 22, height: 22)),
      ),
    );
  }
}

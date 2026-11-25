import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Constant.kDivider)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CustomText(
            text: "OR CONTINUE WITH",
            color: Constant.kHintColor,
            size: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(child: Divider(color: Constant.kDivider)),
      ],
    );
  }
}

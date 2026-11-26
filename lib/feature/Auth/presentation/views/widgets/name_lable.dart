import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class NameLable extends StatelessWidget {
  const NameLable({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: "Name",
      color: Colors.black,
      fontWeight: FontWeight.w600,
      size: 15,
    );
  }
}

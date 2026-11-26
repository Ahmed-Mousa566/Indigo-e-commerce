import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  const LabeledField({super.key, required this.label, required this.child});
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          color: Colors.black,
          size: 16,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 6),
        child,
      ],
    );
  }
}
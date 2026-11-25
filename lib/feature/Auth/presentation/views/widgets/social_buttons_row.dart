import 'package:e_commerce/feature/Auth/presentation/views/widgets/social_button.dart';
import 'package:flutter/material.dart';

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: SocialButton(icon: 'assets/images/google.png')),
        SizedBox(width: 12),
        Expanded(child: SocialButton(icon: 'assets/images/apple.png')),
        SizedBox(width: 12),
        Expanded(child: SocialButton(icon: 'assets/images/facebook.png')),
      ],
    );
  }
}


import 'package:e_commerce/feature/Auth/presentation/views/widgets/register_card.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/social_buttons_row.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          RegisterCard(),
          SizedBox(height: 16),
          SocialButtonsRow()
        ],
      ),
    );
  }
}


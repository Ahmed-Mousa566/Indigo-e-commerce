import 'package:e_commerce/feature/Auth/presentation/views/widgets/guest_button.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/login_card.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/signup_prompt.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/social_buttons_row.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            LoginCard(),
            SizedBox(height: 16),

            OrDivider(),

            SizedBox(height: 16),

            SocialButtonsRow(),

            SizedBox(height: 16),

            GuestButton(),

            SizedBox(height: 16),

            SignUpPrompt(),
          ],
        ),
      ),
    );
  }
}


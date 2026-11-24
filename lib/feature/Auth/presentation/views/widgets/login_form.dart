import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/emali_labal.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 360,
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmailLable(),
            SizedBox(height: 6),
            TextFormFailed(
              prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
              hint: "Email@example.com",
               obscureText: false),
            SizedBox(height: 16),
            PasswordLable(),
            SizedBox(height: 6),
            TextFormFailed(
              prefixIcon: Icon(Icons.lock_outlined, color: Color(0xff8D7168)),
              hint: "••••••••••••",
              obscureText: true),
              




          ],
        ),
      ),
    );
  }
}

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
          color: Constant.KprimaryColor,
          size: 16,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}




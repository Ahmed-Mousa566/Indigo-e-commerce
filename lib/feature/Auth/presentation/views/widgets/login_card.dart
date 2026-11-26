import 'package:e_commerce/core/app_router.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_botttom.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/emali_labal.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/password_lable.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/remmeber_me.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EmailLable(),
          const SizedBox(height: 6),
          const TextFormFailed(
            prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
            hint: "Email@example.com",
            obscureText: false,
          ),
          const SizedBox(height: 16),
          const PasswordLable(),
          const SizedBox(height: 6),
          const TextFormFailed(
            prefixIcon: Icon(Icons.lock_outlined, color: Color(0xff8D7168)),
            hint: "••••••••••••",
            obscureText: true,
          ),

          const SizedBox(height: 12),

          const RememberMeRow(),
          const SizedBox(height: 12),

          Custombutton(
            text: "Login",
            ontap: () => GoRouter.of(context).push(AppRouter.kHomeView),
          ),
        ],
      ),
    );
  }
}

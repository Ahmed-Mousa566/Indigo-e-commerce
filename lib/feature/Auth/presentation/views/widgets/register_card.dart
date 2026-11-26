import 'package:e_commerce/core/app_router.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_botttom.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/lable_faield.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
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
            const LabeledField(label: "Name", child: SizedBox(height: 6)),
            const TextFormFailed(
              prefixIcon: Icon(Icons.person_outline, color: Color(0xff8D7168)),
              hint: "ahmed mousa",
              obscureText: false,
            ),

            const SizedBox(height: 16),
            const LabeledField(label: "Email", child: SizedBox(height: 6)),
            const SizedBox(height: 6),
            const TextFormFailed(
              prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
              hint: "Email@example.com",
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const LabeledField(label: "Mobile", child: SizedBox(height: 6)),
            const SizedBox(height: 6),
            const TextFormFailed(
              prefixIcon: Icon(Icons.phone_outlined, color: Color(0xff8D7168)),
              hint: "123-456-7890",
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const LabeledField(label: "Password", child: SizedBox(height: 6)),
            const SizedBox(height: 6),
            const TextFormFailed(
              prefixIcon: Icon(Icons.lock_outlined, color: Color(0xff8D7168)),
              hint: "••••••••••••",
              obscureText: true,
            ),

            const SizedBox(height: 24),

            Custombutton(
              text: "Register",
              ontap: () => GoRouter.of(context).push(AppRouter.kHomeView),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_botttom.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/lable_faield.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabeledField(label: "Name", child: SizedBox(height: 6)),
            TextFormFailed(
              prefixIcon: Icon(Icons.person_outline, color: Color(0xff8D7168)),
              hint: "ahmed mousa",
              obscureText: false,
            ),

            SizedBox(height: 16),
            LabeledField(label: "Email", child: SizedBox(height: 6)),
            SizedBox(height: 6),
            TextFormFailed(
              prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
              hint: "Email@example.com",
              obscureText: false,
            ),
            SizedBox(height: 16),
            LabeledField(label: "Mobile", child: SizedBox(height: 6)),
            SizedBox(height: 6),
            TextFormFailed(
              prefixIcon: Icon(Icons.phone_outlined, color: Color(0xff8D7168)),
              hint: "123-456-7890",
              obscureText: false,
            ),
            SizedBox(height: 16),
            LabeledField(label: "Password", child: SizedBox(height: 6)),
            SizedBox(height: 6),
            TextFormFailed(
              prefixIcon: Icon(Icons.lock_outlined, color: Color(0xff8D7168)),
              hint: "••••••••••••",
              obscureText: true,
            ),

            SizedBox(height: 24),

            Custombutton(text: "Register", ontap: null),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_botttom.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/emali_labal.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/password_lable.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/remmeber_me.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
  });

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailLable(),
          SizedBox(height: 6),
          TextFormFailed(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Color(0xff8D7168),
            ),
            hint: "Email@example.com",
            obscureText: false,
          ),
          SizedBox(height: 16),
          PasswordLable(),
          SizedBox(height: 6),
          TextFormFailed(
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: Color(0xff8D7168),
            ),
            hint: "••••••••••••",
            obscureText: true,
          ),
    
          SizedBox(height: 12),
    
          RememberMeRow(),
          SizedBox(height: 12),
    
          Custombutton(text: "Login", ontap: null),
        ],
      ),
    );
  }
}

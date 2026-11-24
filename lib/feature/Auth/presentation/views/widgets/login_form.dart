import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/emali_labal.dart';
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
            TextFormFailed(hint: "Email", obscureText: false),


          ],
        ),
      ),
    );
  }
}



class TextFormFailed extends StatelessWidget {
  const TextFormFailed({
    super.key,
    required this.hint,
    this.onchanged,
    required this.obscureText,
  });
  final String hint;
  final Function(String)? onchanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "field is required";
        }
        return null;
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF6F3F2),

        prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
        hint: CustomText(text: hint, color: Color(0xff8D7168), size: 16),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 97, 180, 33)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

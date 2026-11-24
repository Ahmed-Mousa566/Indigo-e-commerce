import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      color: Colors.white,
      child: const Column(
        children: [
          TextFormFailed(
            hint: "Email",
            obscureText: false,
          ),
          
          
        ],
      ),
    );
  }
}

class TextFormFailed extends StatelessWidget {
  const TextFormFailed({super.key, required this.hint, this.onchanged, required this.obscureText});
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
        hint: CustomText(
          text: hint,
          color: const Color.fromARGB(255, 194, 191, 191),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 97, 180, 33)),
        ),
      ),
    );
  }
}

import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class TextFormFailed extends StatelessWidget {
  const TextFormFailed({
    super.key,
    required this.hint,
    this.onchanged,
     this.obscureText, 
    this.prefixIcon,
  });
  final String hint;
  final Function(String)? onchanged;
  final bool? obscureText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText?? false,
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

        prefixIcon: prefixIcon ,
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

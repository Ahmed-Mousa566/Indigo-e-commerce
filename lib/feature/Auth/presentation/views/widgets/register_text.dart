import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "Create Account", color: Colors.black, size: 30),
          CustomText(
            text:
                "Join 100,000+ happy shoppers in Cairo & across Egypt for premier same-day delivery.",
            color: Constant.KsubTittle,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            size: 15,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

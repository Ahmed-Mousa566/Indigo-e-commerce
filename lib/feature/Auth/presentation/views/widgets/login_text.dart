import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTxet extends StatelessWidget {
  const LoginTxet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomText(text: "Welcome Back 👋",
           color: Colors.black,
            size: 30,
            ),
               CustomText(
                 text: "Sign in to access your wishlist, tracked EGP orders,and VIP member deals.",
                color: Constant.kSubTittle,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                 size: 15,
                 ),
                 const SizedBox(height: 24,)
      
        ],
      ),
    );
  }
}

import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, ),
            ),
            const Spacer(),
             CustomText(
              text: title,
              size: 25,
              fontWeight: FontWeight.bold,
              color: Constant.KprimaryColor,
            ),
            const SizedBox(width: 60),
          ],
        ),
      ),
    );
  }
}

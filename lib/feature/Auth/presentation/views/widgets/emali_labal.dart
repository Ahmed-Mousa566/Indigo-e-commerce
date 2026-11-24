import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class EmailLable extends StatelessWidget {
  const EmailLable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: "Email or Mobile Number",
          color: Colors.black,
          size: 14,
          fontWeight: FontWeight.w500,
        ),
        Spacer(),
        CustomText(
          text: "Egypt(+20)",
          color: Color(0xff59413A),
          size: 14,
          fontWeight: FontWeight.w300,
        ),
      ],
    );
  }
}
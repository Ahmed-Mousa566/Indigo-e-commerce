import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Hello, Mousa 👋",
            size: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Constant.kPrimaryColor),
              CustomText(
                text: "Deliver to Cairo, Maadi",
                size: 18,
                fontWeight: FontWeight.bold,
                color: Constant.kSubTittle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

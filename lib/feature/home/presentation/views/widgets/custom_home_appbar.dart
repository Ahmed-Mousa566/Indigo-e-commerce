import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';


class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key, this.icon, required this.title});
  final Widget? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: icon ?? const SizedBox()),
              Expanded(
                child: Center(
                  child: CustomText(
                    text: title,
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: Constant.kPrimaryColor,
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),
              const CircleAvatar(
                radius: 17,
                backgroundColor: Color(0xff91E8FA),
                backgroundImage: AssetImage('assets/images/me.jpeg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


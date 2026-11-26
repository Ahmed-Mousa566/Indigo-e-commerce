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
      height: 75,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 25),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: icon ?? Container()),
            Spacer(),
            CustomText(
              text: title,
              size: 18,
              fontWeight: FontWeight.bold,
              color: Constant.kPrimaryColor,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),

            Container(
              width: 42,
              height: 42,
              decoration: const BoxDecoration(
                color: Color(0xff91E8FA),
                shape: BoxShape.circle,
              ),
              child: ClipOval(child: Image.asset("assets/images/me.jpeg",fit: BoxFit.cover),
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}

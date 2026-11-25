import 'package:e_commerce/core/app_router.dart';
import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplchViewBody extends StatefulWidget {
  const SplchViewBody({super.key});

  @override
  State<SplchViewBody> createState() => _SplchViewBodyState();
}

class _SplchViewBodyState extends State<SplchViewBody> {
  @override
  initState() {
    super.initState();
    routToHome();
  }

  void routToHome() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (!mounted) return;

      GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //    Center(child: SvgPicture.asset('assets/images/logo.svg',
        // height: 300,

        // )),
        Center(
          child: Image.asset(
            'assets/images/screen.png',
            height: 300,
            fit: BoxFit.contain,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Indigo ',
              size: 34,
              fontWeight: FontWeight.bold,
              color: Constant.kPrimaryColor,
            ),
            CustomText(
              text: 'Store',
              size: 34,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ],
        ),
        CustomText(
          text: 'EGYPT\'S PREMIER CURATED SHOPPING',
          size: 14,
          fontWeight: FontWeight.w500,
          color: Constant.kSubTittle,
        ),
      ],
    );
  }
}

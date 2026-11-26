import 'package:e_commerce/feature/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppbar(title: "Home"),
          HomeHeader(),
        ],
      ),
    );
  }
}

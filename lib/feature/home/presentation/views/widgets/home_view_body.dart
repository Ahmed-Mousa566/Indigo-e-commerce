import 'package:e_commerce/feature/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/home_header.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/photo_offer.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/search_bar.dart';
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
          SizedBox(height: 8),
          HomeHeader(),
          SizedBox(height: 8),
          SearchFailed(),
          SizedBox(height: 8),
          PhotoOffer(),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PhotoOffer extends StatelessWidget {
  const PhotoOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/Background+Shadow.png",
      width: double.infinity,
      height: 200,
      fit: BoxFit.fill,
    );
  }
}

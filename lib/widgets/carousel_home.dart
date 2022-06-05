import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';

class CarouselHome extends StatelessWidget {
  final Color backgroundColor;
  const CarouselHome({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: Image.asset(
        AppAssets.iconImageBanner,
        fit: BoxFit.fill,
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}

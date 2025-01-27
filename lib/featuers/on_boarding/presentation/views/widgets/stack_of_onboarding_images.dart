import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class StackOfOnboardingImages extends StatelessWidget {
  const StackOfOnboardingImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: MediaQuery.of(context).size.width * 0.04,
          bottom: MediaQuery.of(context).size.height * 0.0001,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(Assets.imagesOnboardingTwo, scale: 1.2),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            Assets.imagesOnboardingTwo,
            scale: 1,
          ),
        ),
      ],
    );
  }
}

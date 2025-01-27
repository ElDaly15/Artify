import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class StackOfOnboardingImages extends StatelessWidget {
  const StackOfOnboardingImages({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenSize = MediaQuery.of(context).size;

    // Define breakpoints for responsiveness
    final isTablet = screenSize.width >= 600;

    return Stack(
      children: [
        Positioned(
          right: screenSize.width * (isTablet ? 0.3 : 0.04),
          bottom: screenSize.height * (isTablet ? 0.02 : 0.0001),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              Assets.imagesOnboardingTwo,
              scale: isTablet ? 1.0 : 1.2, // Adjust scale for tablet
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            Assets.imagesOnboardingTwo,
            scale: isTablet ? 0.8 : 1.0, // Adjust scale for tablet
          ),
        ),
      ],
    );
  }
}

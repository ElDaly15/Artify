import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class StackOfProfileImageWithBanner extends StatelessWidget {
  const StackOfProfileImageWithBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Image(
          image: AssetImage(Assets.imagesBanner),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          bottom: -40,
          right: 0,
          left: 0,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                Assets.imagesAvatar,
                scale: 0.34,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

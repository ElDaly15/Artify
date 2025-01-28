import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ImageOfTopCollectionContainer extends StatelessWidget {
  const ImageOfTopCollectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          Assets.imagesNft1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

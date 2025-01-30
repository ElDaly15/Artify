import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerOfTabBar extends StatelessWidget {
  const ContainerOfTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesNft2),
              fit: BoxFit.cover,
            ),
            color: AppColors.blackColorTheme,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#14415',
                style: TextStyles.font20SemiBold(context)
                    .copyWith(color: AppColors.mainColorTheme),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Hypebest Apes B',
                  style: TextStyles.font18SemiBold(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

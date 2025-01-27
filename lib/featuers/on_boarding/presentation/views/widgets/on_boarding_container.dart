import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CointaierOfOnboardingDetails extends StatelessWidget {
  const CointaierOfOnboardingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [
              0.0, // Start from fully transparent
              0.1, // Mid-transparent
              0.3, // Less transparent
              0.8, // Less transparent
              1.0, // Fully opaque
            ],
            colors: [
              Colors.transparent,
              Colors.white.withOpacity(0.2),
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: const ColumnOfContainer(),
      ),
    );
  }
}

class ColumnOfContainer extends StatelessWidget {
  const ColumnOfContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Text(
              'Discover, Collect',
              style: TextStyles.font24Bold(context).copyWith(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'and Sell',
                  style: TextStyles.font24Bold(context).copyWith(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'NFTs',
                      style: TextStyles.font24Bold(context).copyWith(
                          fontSize: 30, color: AppColors.mainColorTheme),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.imagesLineMark,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'A vibrant marketplace where creators showcase their unique NFTs.',
              style: TextStyles.font20Medium(context)
                  .copyWith(color: const Color(0xff979796)),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

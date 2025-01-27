import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/on_boarding_container.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/stack_of_onboarding_images.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SafeArea(
              child: SizedBox(
                height: 10,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Text(
                  'Skip',
                  style: TextStyles.font20Medium(context),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StackOfOnboardingImages(),
          ],
        ),
        const CointaierOfOnboardingDetails(),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.1,
          child: Image.asset(
            Assets.imagesShadow,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.05,
          right: MediaQuery.of(context).size.width * -0.1,
          child: Image.asset(
            Assets.imagesShadow,
          ),
        ),
      ],
    );
  }
}

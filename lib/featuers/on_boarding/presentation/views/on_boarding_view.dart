import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColorFirst,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnBoardingViewBody(
            pageController: controller,
          ),
          OnBoardingViewBody(
            pageController: controller,
          ),
          OnBoardingViewBody(
            pageController: controller,
          ),
          OnBoardingViewBody(
            pageController: controller,
          ),
        ],
      ),
    );
  }
}

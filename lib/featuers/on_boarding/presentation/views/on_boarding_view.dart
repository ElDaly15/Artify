import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.secondaryColorFirst,
      body: OnBoardingViewBody(),
    );
  }
}

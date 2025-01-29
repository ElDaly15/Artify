import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarForNftDetails extends StatelessWidget {
  const CustomAppBarForNftDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          iconSize: 24,
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackColorTheme,
          ),
        ),
        const Spacer(),
        Text(
          'Detail',
          style: TextStyles.font24Bold(context),
        ),
        const Spacer(),
      ],
    );
  }
}

import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerOfSelectionHeader extends StatelessWidget {
  const ContainerOfSelectionHeader(
      {super.key, required this.title, required this.isActive});
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.fastOutSlowIn,
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        border: isActive ? null : Border.all(color: const Color(0xffF0F0F0)),
        color: isActive ? AppColors.mainColorTheme : const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyles.font20Medium(context).copyWith(
              color: isActive
                  ? Colors.white
                  : const Color.fromARGB(255, 194, 193, 193)),
        ),
      ),
    );
  }
}

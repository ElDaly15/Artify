import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CrownWithTitleWidget extends StatelessWidget {
  const CrownWithTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            child: Text(
              'Hypebest Apes B',
              style: TextStyles.font24SemiBold(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 23,
          backgroundColor: AppColors.secondaryColorFirst,
          child: SvgPicture.asset(Assets.imagesCrown),
        ),
      ],
    );
  }
}

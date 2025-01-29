import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDetailsViewColumn extends StatelessWidget {
  const CustomDetailsViewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#14415',
          style: TextStyles.font24SemiBold(context)
              .copyWith(color: AppColors.mainColorTheme, fontSize: 26),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.42,
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
        ),
      ],
    );
  }
}

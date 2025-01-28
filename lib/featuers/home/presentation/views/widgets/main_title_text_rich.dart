import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MainTitleTextRich extends StatelessWidget {
  const MainTitleTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'Selling the',
          style: TextStyles.font22Bold(context).copyWith(fontSize: 28),
        ),
        TextSpan(
          text: ' MOST POPULAR ',
          style: TextStyles.font22Bold(context)
              .copyWith(fontSize: 28, color: AppColors.mainColorTheme),
        ),
        TextSpan(
          text: 'NFT is only here',
          style: TextStyles.font22Bold(context).copyWith(fontSize: 28),
        ),
      ]),
    );
  }
}

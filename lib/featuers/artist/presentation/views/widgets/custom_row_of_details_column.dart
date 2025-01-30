import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowOfDetialsColumn extends StatelessWidget {
  const CustomRowOfDetialsColumn(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.isEthSvgAppeared});
  final String mainTitle, subTitle;
  final bool isEthSvgAppeared;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Visibility(
              visible: isEthSvgAppeared,
              child: SvgPicture.asset(
                Assets.imagesEth,
                height: 22,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                mainTitle,
                style: TextStyles.font24Bold(context).copyWith(),
              ),
            ),
          ],
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              subTitle,
              style: TextStyles.font20Regular(context).copyWith(
                color: const Color(0XFF979796),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

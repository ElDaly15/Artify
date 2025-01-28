import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyles.font24Bold(context).copyWith(),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.imagesMenu,
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}

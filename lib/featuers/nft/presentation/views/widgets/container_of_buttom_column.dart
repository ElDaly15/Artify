import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerOfButtomColumn extends StatelessWidget {
  const ContainerOfButtomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12), // Shadow color
            spreadRadius: 1, // Spread of the shadow
            blurRadius: 12, // Blur effect
            offset: const Offset(0, -4), // Moves shadow upwards
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyles.font20Regular(context)
                      .copyWith(color: const Color(0xff979796)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '2.23 ETH',
                  style: TextStyles.font24Bold(context)
                      .copyWith(color: AppColors.blackColorTheme),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColors.blackColorTheme,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.imagesBid,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Place a Bid',
                      style: TextStyles.font18SemiBold(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

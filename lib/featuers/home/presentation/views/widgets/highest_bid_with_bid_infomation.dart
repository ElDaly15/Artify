import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HighestBidWithBidInformation extends StatelessWidget {
  const HighestBidWithBidInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Highest Bid Today',
                  style: TextStyles.font20Regular(context)
                      .copyWith(color: const Color(0xffA0A0A0)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.imagesEth,
                    height: 25,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '2.23 ETH',
                      style: TextStyles.font22Bold(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}

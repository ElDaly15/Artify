import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/dashes_of_container.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/crown_with_title_widget.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/row_of_sold_and_bid_time_remaining.dart';
import 'package:flutter/material.dart';

class CustomDetailsViewColumn extends StatelessWidget {
  const CustomDetailsViewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
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
          const CrownWithTitleWidget(),
          const SizedBox(
            height: 10,
          ),
          const RowOfSoldAndBidTimeRemaining(),
          const SizedBox(
            height: 20,
          ),
          const DashesOfContainer(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: TextStyles.font24Bold(context).copyWith(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe. Each Apes NFT is a unique masterpiece, and crafted by artists around the globe. Each Apes NFT is a unique masterpiece, and crafted by artists around the globe. Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
            style: TextStyles.font20Regular(context)
                .copyWith(color: const Color.fromARGB(255, 141, 141, 141)),
          ),
        ],
      ),
    );
  }
}

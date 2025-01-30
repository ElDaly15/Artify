import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/custom_watchlist_elevated_btm.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/row_of_prices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArtistDetailsColumn extends StatelessWidget {
  const ArtistDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Darlene Robertson',
              style: TextStyles.font24SemiBold(context),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              Assets.imagesVerify,
              height: 20,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Center(
          child: Text(
            'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
            style: TextStyles.font20Regular(context)
                .copyWith(color: const Color(0XFF979796)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const RowOfPrices(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.0011),
        SizedBox(
          height: 100,
          child: Row(
            children: [
              const CustomWatchlistElevatedBtm(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              SvgPicture.asset(Assets.imagesMenu),
            ],
          ),
        ),
      ],
    );
  }
}

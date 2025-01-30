import 'package:coffee_shop/featuers/artist/presentation/views/widgets/artist_details_column.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/stack_of_profile_image_with_banner.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ArtistViewBody extends StatelessWidget {
  const ArtistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          const CustomAppBarWithTextAndBackBtm(
            title: 'Collection',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const StackOfProfileImageWithBanner(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.052,
          ),
          const ArtistDetailsColumn(),
        ],
      ),
    );
  }
}

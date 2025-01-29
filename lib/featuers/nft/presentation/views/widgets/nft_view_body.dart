import 'package:coffee_shop/featuers/nft/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NftViewBody extends StatelessWidget {
  const NftViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          CustomAppBarForNftDetails(),
        ],
      ),
    );
  }
}

import 'package:coffee_shop/featuers/nft/presentation/views/widgets/nft_view_body.dart';
import 'package:flutter/material.dart';

class NftView extends StatelessWidget {
  const NftView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: NftViewBody(),
    );
  }
}

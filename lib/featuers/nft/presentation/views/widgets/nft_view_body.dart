import 'package:coffee_shop/featuers/nft/presentation/views/widgets/container_of_buttom_column.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/custom_app_bar.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/custom_detailes_view_column.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/image_container.dart';
import 'package:flutter/material.dart';

class NftViewBody extends StatelessWidget {
  const NftViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  CustomAppBarForNftDetails(),
                  SizedBox(
                    height: 10,
                  ),
                  ImageContainer(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDetailsViewColumn(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          ContainerOfButtomColumn(),
        ],
      ),
    );
  }
}

import 'package:coffee_shop/featuers/home/presentation/views/widgets/dashes_of_container.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/highest_bid_with_bid_infomation.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/image_of_top_collection_container.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/title_of_container_with_time.dart';
import 'package:flutter/material.dart';

class ColumnOfTopCollectionContainer extends StatelessWidget {
  const ColumnOfTopCollectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ImageOfTopCollectionContainer(),
        SizedBox(
          height: 15,
        ),
        TitleOfContainerOfTopCollectionWithTime(),
        SizedBox(height: 30),
        DashesOfContainer(),
        SizedBox(height: 30),
        HighestBidWithBidInformation(),
        SizedBox(height: 20),
      ],
    );
  }
}

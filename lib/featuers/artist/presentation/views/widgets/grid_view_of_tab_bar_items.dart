import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/featuers/artist/data/models/artist_model.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/container_of_tab_bar.dart';
import 'package:flutter/material.dart';

class GrideViewOfTabBarItems extends StatefulWidget {
  const GrideViewOfTabBarItems({super.key});

  @override
  State<GrideViewOfTabBarItems> createState() => _GrideViewOfTabBarItemsState();
}

class _GrideViewOfTabBarItemsState extends State<GrideViewOfTabBarItems> {
  final List<ArtistModel> artistModels = [
    ArtistModel(
        code: '#14415', title: 'Hypebest Apes B', image: Assets.imagesNft2),
    ArtistModel(
        code: '#15315', title: 'Hypebest Apes D', image: Assets.imagesNft3),
    ArtistModel(
        code: '#19254', title: 'Hypebest Apes G', image: Assets.imagesNft7),
    ArtistModel(
        code: '#08921', title: 'Hypebest Apes H', image: Assets.imagesNft4),
    ArtistModel(
        code: '#15315', title: 'Hypebest Apes D', image: Assets.imagesNft3),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true, // Prevents infinite height issue
      physics:
          const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemCount: artistModels.length,

      itemBuilder: (context, index) => ContainerOfTabBar(
        artistModel: artistModels[index],
      ),
    );
  }
}

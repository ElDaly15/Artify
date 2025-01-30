import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/artist/data/models/artist_model.dart';
import 'package:flutter/material.dart';

class ContainerOfTabBar extends StatelessWidget {
  const ContainerOfTabBar({super.key, required this.artistModel});
  final ArtistModel artistModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(artistModel.image),
              fit: BoxFit.cover,
            ),
            color: AppColors.blackColorTheme,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artistModel.code,
                style: TextStyles.font20SemiBold(context)
                    .copyWith(color: AppColors.mainColorTheme),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  artistModel.title,
                  style: TextStyles.font18SemiBold(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

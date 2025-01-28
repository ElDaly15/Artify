import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BestArtistCategory extends StatefulWidget {
  const BestArtistCategory({super.key});

  @override
  State<BestArtistCategory> createState() => _BestArtistCategoryState();
}

class _BestArtistCategoryState extends State<BestArtistCategory> {
  bool isFollow = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            Assets.imagesAvatar,
            scale: 0.8,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Darlene Robertson',
              style: TextStyles.font20SemiBold(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              '125k Followers',
              style: TextStyles.font18Regular(context)
                  .copyWith(color: const Color(0xffA0A0A0)),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              isFollow = !isFollow;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: isFollow ? Colors.white : AppColors.mainColorTheme,
            ),
            child: Text(
              isFollow ? 'Unfollow' : 'Follow',
              style: TextStyles.font18SemiBold(context).copyWith(
                  color: isFollow ? AppColors.mainColorTheme : Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomWatchlistElevatedBtm extends StatelessWidget {
  const CustomWatchlistElevatedBtm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColorTheme,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.add, color: Colors.white),
            const SizedBox(width: 5),
            Text(
              'Watchlist',
              style: TextStyles.font20SemiBold(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

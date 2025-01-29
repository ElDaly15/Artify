import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RowOfSoldAndBidTimeRemaining extends StatelessWidget {
  const RowOfSoldAndBidTimeRemaining({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: AppColors.secondaryColorFirst,
          ),
          child: Text(
            '125 Sold',
            style: TextStyles.font18Regular(context)
                .copyWith(color: const Color.fromARGB(255, 189, 188, 188)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FittedBox(
          child: Row(
            children: [
              const Icon(
                Icons.watch_later_outlined,
                size: 20,
                color: Color.fromARGB(255, 189, 188, 188),
              ),
              const SizedBox(
                width: 5,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '1h 23m 32s',
                  style: TextStyles.font18SemiBold(context).copyWith(
                      color: const Color.fromARGB(255, 189, 188, 188)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

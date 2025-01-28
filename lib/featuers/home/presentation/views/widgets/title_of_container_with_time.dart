import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TitleOfContainerOfTopCollectionWithTime extends StatelessWidget {
  const TitleOfContainerOfTopCollectionWithTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.42,
              child: Text(
                'Hypebest Apes G',
                style: TextStyles.font22SemiBold(context),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Ends in',
                    style: TextStyles.font20Regular(context)
                        .copyWith(color: const Color(0xffA0A0A0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              FittedBox(
                child: Row(
                  children: [
                    const Icon(Icons.watch_later_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '1h 23m 32s',
                        style: TextStyles.font22SemiBold(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

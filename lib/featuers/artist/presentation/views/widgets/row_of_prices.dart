import 'package:coffee_shop/featuers/artist/presentation/views/widgets/custom_row_of_details_column.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/vertical_dashes.dart';
import 'package:flutter/material.dart';

class RowOfPrices extends StatelessWidget {
  const RowOfPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        CustomRowOfDetialsColumn(
          mainTitle: '10.0K',
          subTitle: 'Items',
          isEthSvgAppeared: false,
        ),
        VericalDashes(),
        CustomRowOfDetialsColumn(
          mainTitle: '689.19K',
          subTitle: 'Volume',
          isEthSvgAppeared: true,
        ),
        VericalDashes(),
        CustomRowOfDetialsColumn(
          mainTitle: '13.99',
          subTitle: 'Floor Price',
          isEthSvgAppeared: true,
        ),
        Spacer(),
      ],
    );
  }
}

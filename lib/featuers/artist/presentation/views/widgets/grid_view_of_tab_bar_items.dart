import 'package:coffee_shop/featuers/artist/presentation/views/widgets/container_of_tab_bar.dart';
import 'package:flutter/material.dart';

class GrideViewOfTabBarItems extends StatelessWidget {
  const GrideViewOfTabBarItems({super.key});

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
      itemCount: 4,

      itemBuilder: (context, index) => const ContainerOfTabBar(),
    );
  }
}

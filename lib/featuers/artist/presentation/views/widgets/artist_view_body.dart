import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/artist_details_column.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/grid_view_of_tab_bar_items.dart';
import 'package:coffee_shop/featuers/artist/presentation/views/widgets/stack_of_profile_image_with_banner.dart';
import 'package:coffee_shop/featuers/nft/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/indicator/custom_indicator.dart';
import 'package:flutter_custom_tab_bar/indicator/linear_indicator.dart';
import 'package:flutter_custom_tab_bar/transform/color_transform.dart';

class ArtistViewBody extends StatefulWidget {
  const ArtistViewBody({super.key});

  @override
  State<ArtistViewBody> createState() => _ArtistViewBodyState();
}

class _ArtistViewBodyState extends State<ArtistViewBody> {
  final int pageCount = 2;
  final PageController _controller = PageController(initialPage: 0);
  final CustomTabBarController _tabBarController = CustomTabBarController();

  Widget getTabbarChild(BuildContext context, int index) {
    return TabBarItem(
      index: index,
      transform: ColorsTransform(
        highlightColor: AppColors.blackColorTheme,
        normalColor: Colors.grey,
        builder: (context, color) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            alignment: Alignment.center,
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width * 0.45,
                minHeight: 29),
            child: (Text(
              index == 0 ? 'Item\'s' : 'Activity',
              style: TextStyles.font22SemiBold(context).copyWith(color: color),
            )),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          const CustomAppBarWithTextAndBackBtm(
            title: 'Collection',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const StackOfProfileImageWithBanner(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.052,
          ),
          const ArtistDetailsColumn(),
          CustomTabBar(
            tabBarController: _tabBarController,
            height: 35,
            itemCount: pageCount,
            builder: getTabbarChild,
            indicator: LinearIndicator(
                color: AppColors.mainColorTheme, bottom: 2, height: 1.7),
            pageController: _controller,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: GrideViewOfTabBarItems(),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

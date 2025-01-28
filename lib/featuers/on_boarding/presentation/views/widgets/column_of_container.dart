import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart' as g;

class ColumnOfContainer extends StatefulWidget {
  const ColumnOfContainer({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<ColumnOfContainer> createState() => _ColumnOfContainerState();
}

class _ColumnOfContainerState extends State<ColumnOfContainer> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_pageControllerListener);
  }

  void _pageControllerListener() {
    if (mounted) {
      setState(() {
        index = widget.pageController.page?.round() ?? 0;
      });
    }
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_pageControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Center(
            child: Text(
              'Discover, Collect',
              style: TextStyles.font24Bold(context).copyWith(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'and Sell',
                  style: TextStyles.font24Bold(context).copyWith(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'NFTs',
                      style: TextStyles.font24Bold(context).copyWith(
                          fontSize: 30, color: AppColors.mainColorTheme),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.imagesLineMark,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'A vibrant marketplace where creators showcase their unique NFTs.',
              style: TextStyles.font20Medium(context)
                  .copyWith(color: const Color(0xff979796)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                SmoothPageIndicator(
                    controller: widget.pageController, // PageController
                    count: 4,
                    effect: WormEffect(
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      activeDotColor: AppColors.blackColorTheme,
                      dotColor: const Color(0xff171816).withOpacity(0.3),
                    ),
                    // your preferred effect
                    onDotClicked: (index) {}),
                const Spacer(),
                index == 3
                    ? IconButton(
                        style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(18),
                            backgroundColor: AppColors.blackColorTheme,
                            iconSize: 28),
                        onPressed: () {
                          g.Get.off(() => const HomeView(),
                              transition: g.Transition.fade,
                              duration: const Duration(milliseconds: 350));
                        },
                        icon: const Icon(
                          Icons.start,
                          color: Colors.white,
                        ),
                      )
                    : IconButton(
                        style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(18),
                            backgroundColor: AppColors.blackColorTheme,
                            iconSize: 28),
                        onPressed: () {
                          final nextPage = (index + 1) % 4;
                          widget.pageController.animateToPage(
                            nextPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ),
                      ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

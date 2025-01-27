import 'package:coffee_shop/core/utils/app_images.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/on_boarding_container.dart';
import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/stack_of_onboarding_images.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
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
    return Stack(
      children: [
        Column(
          children: [
            const SafeArea(
              child: SizedBox(
                height: 10,
              ),
            ),
            Visibility(
              visible: index != 3,
              child: GestureDetector(
                onTap: () {
                  widget.pageController.animateToPage(
                    3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Text(
                      'Skip',
                      style: TextStyles.font20Medium(context),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StackOfOnboardingImages(),
          ],
        ),
        CointaierOfOnboardingDetails(
          pageController: widget.pageController,
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.1,
          child: Image.asset(
            Assets.imagesShadow,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          right: MediaQuery.of(context).size.width * -0.1,
          child: Image.asset(
            Assets.imagesShadow,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../theming/colors.dart';

class IndicatorForPages extends StatelessWidget {
  final int count;
  final PageController pageController;
  const IndicatorForPages({
    super.key,
    required this.pageController,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: pageController,
        count: count,
        effect: SwapEffect(
          activeDotColor: ColorsManager.darkGrayish,
          dotColor: ColorsManager.grayishBlue,
          dotHeight: 8,
          dotWidth: 8,
        ),
      ),
    );
  }
}

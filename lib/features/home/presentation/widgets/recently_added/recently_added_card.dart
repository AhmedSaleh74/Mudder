import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/indicator_for_pages.dart';
import 'content_recently_card.dart';

class RecentlyAddedCard extends StatelessWidget {
  const RecentlyAddedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              child: PageView(
                controller: _pageController,
                children: [
                  ContentRecentlyAddedCard(),
                  ContentRecentlyAddedCard(),
                  ContentRecentlyAddedCard(),
                ],
              ),
            ),
            verticalSpace(12),
            IndicatorForPages(pageController: _pageController, count: 3),
          ],
        ),
      ),
    );
  }
}

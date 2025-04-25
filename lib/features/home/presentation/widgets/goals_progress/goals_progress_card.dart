import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/widgets/custom_container.dart';
import '../../../../../core/widgets/indicator_for_pages.dart';
import 'content_goals_progress_card.dart';


class GoalsProgressCard extends StatelessWidget {
  const GoalsProgressCard({super.key});

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
              height: 280.h,
              child: PageView(
                controller: _pageController,
                children: [
                  ContentGoalsProgressCard(),
                  ContentGoalsProgressCard(),
                ],
              ),
            ),
            verticalSpace(10),
            IndicatorForPages(pageController: _pageController, count: 2),
          ],
        ),
      ),
    );
  }
}

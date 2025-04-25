import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';
import 'category_name.dart';
import 'goal_progress_information.dart';

class ContentGoalsProgressCard extends StatelessWidget {
  const ContentGoalsProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Home.Goals progress.Goals progress'.tr(),
            style: TextStyles.font16VeryDarkBlueMedium(),
          ),
          verticalSpace(12),
          CategoryName(
            totalGoals: false,
            categoryName: 'التسويق',
            financialCategory: 'H1 FY25',
          ),
          verticalSpace(6),
          GoalProgressInformation(
            userImage: 'assets/images/Profile.png',
            goalTitle: 'الحصول على 100 عميل في سنة 2025',
            percentage: '0%',
          ),
          verticalSpace(10),
          CategoryName(categoryName: 'التسويق', financialCategory: 'H1 FY25'),
          verticalSpace(6),
          GoalProgressInformation(
            userImage: 'assets/images/Profile.png',
            goalTitle: 'الحصول على 100 عميل في سنة 2025',
            percentage: '50%',
          ),
          verticalSpace(10),
          CategoryName(categoryName: 'التسويق', financialCategory: 'H1 FY25'),
          verticalSpace(6),
          GoalProgressInformation(
            userImage: 'assets/images/Profile.png',
            goalTitle: 'الحصول على 100 عميل في سنة 2025',
            percentage: '0%',
          ),
        ],
      ),
    );
  }
}

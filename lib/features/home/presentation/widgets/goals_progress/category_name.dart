import 'package:flutter/material.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/features/home/presentation/widgets/goals_progress/small_round_container.dart';
import '../../../../../core/theming/style.dart';

class CategoryName extends StatelessWidget {
  final String categoryName;
  final String financialCategory;
  final bool totalGoals;
  const CategoryName({
    super.key,
    required this.categoryName,
    required this.financialCategory,
    this.totalGoals = true,
  });

  @override
  Widget build(BuildContext context) {
    return totalGoals
        ? Row(
          children: [
            Text(categoryName, style: TextStyles.font10DarkGrayishRegular()),
            horizontalSpace(6),
            SmallRoundContainer(),
            horizontalSpace(6),
            Text(
              financialCategory,
              style: TextStyles.font10DarkGrayishRegular(),
            ),
          ],
        )
        : Row(
          children: [
            Text('2 أهداف فرعية', style: TextStyles.font10DarkGrayishRegular()),
            horizontalSpace(6),
            SmallRoundContainer(),
            horizontalSpace(6),
            Text(categoryName, style: TextStyles.font10DarkGrayishRegular()),
            horizontalSpace(6),
            SmallRoundContainer(),
            horizontalSpace(6),
            Text(
              financialCategory,
              style: TextStyles.font10DarkGrayishRegular(),
            ),
          ],
        );
  }
}

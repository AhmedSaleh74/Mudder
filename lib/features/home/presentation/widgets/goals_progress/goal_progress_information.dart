import 'package:flutter/material.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/colors.dart';
import 'package:mudeer/core/theming/style.dart';

import '../../../../../core/widgets/circle_image_user.dart';

class GoalProgressInformation extends StatelessWidget {
  final String goalTitle;
  final String userImage;
  final String percentage;
  const GoalProgressInformation({
    super.key,
    required this.goalTitle,
    required this.userImage,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(goalTitle, style: TextStyles.font12VeryDarkBlueMedium()),
        verticalSpace(6),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          width: double.infinity,
          height: 34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorsManager.lightGrayishBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleImageUser(pathImage: userImage),
              Container(
                height: 22,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsManager.white,
                  border: Border.all(
                    color: ColorsManager.lightBlue,
                    width: 0.60,
                  ),
                ),
                child: Center(
                  child: Text(
                    percentage,
                    style: TextStyles.font10VeryDarkRegular(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

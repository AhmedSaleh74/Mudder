import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/colors.dart';
import 'package:mudeer/core/theming/style.dart';
import 'package:mudeer/core/widgets/custom_container.dart';

class BonusContainer extends StatelessWidget {
  final String title;
  final String number;
  const BonusContainer({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 84.w,
      padding: EdgeInsets.symmetric(vertical: 15.48),
      backgroundColor: ColorsManager.lightGrayishBlue,
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title.tr(), style: TextStyles.font14VeryDarkBlueRegular()),
            verticalSpace(12.32),
            Text(number, style: TextStyles.font14DarkGrayMedium()),
          ],
        ),
      ),
    );
  }
}

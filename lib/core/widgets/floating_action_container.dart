import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/colors.dart';
import 'package:mudeer/core/theming/style.dart';
import 'package:mudeer/core/widgets/custom_container.dart';

import 'custom_text_button.dart';
import 'icon_container_with_text.dart';

class FloatingActionContainer extends StatelessWidget {
  const FloatingActionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          IconWithContainer(
            backgroundColor: ColorsManager.veryPaleBlue,
            width: 34,
            height: 31,
            pathIcon: 'assets/icons/projects/progict.svg',
            svgIconColor: ColorsManager.moreDarkBlue,
            svgIconHeight: 15.h,
            svgIconWidth: 15.w,
            borderRadiusCircular: 7.2,
            horizontalSpace: 8,
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home.Add.project'.tr(),
                  style: TextStyles.font16VeryDarkBlueMedium(),
                ),
                Text(
                  'Home.Add.Start a new project'.tr(),
                  style: TextStyles.font14VeryDarkGrayRegular(),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          verticalSpace(13),
          IconWithContainer(
            backgroundColor: ColorsManager.veryPaleBlue,
            width: 34,
            height: 31,
            pathIcon: 'assets/icons/tasks/triangle.svg',
            svgIconColor: ColorsManager.moreDarkBlue,
            svgIconHeight: 20.h,
            svgIconWidth: 20.w,
            borderRadiusCircular: 7.2,
            horizontalSpace: 8,
            widget: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home.Add.goal'.tr(),
                    style: TextStyles.font16VeryDarkBlueMedium(),
                  ),
                  Text(
                    'Home.Add.Plan, execute'.tr(),
                    style: TextStyles.font14VeryDarkGrayRegular(),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(13),
          IconWithContainer(
            backgroundColor: ColorsManager.veryPaleBlue,
            width: 34,
            height: 31,
            pathIcon: 'assets/icons/Vector.svg',
            svgIconColor: ColorsManager.moreDarkBlue,
            svgIconHeight: 15.h,
            svgIconWidth: 15.w,
            borderRadiusCircular: 7.2,
            horizontalSpace: 8,
            widget: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home.Add.member'.tr(),
                    style: TextStyles.font16VeryDarkBlueMedium(),
                  ),
                  Text(
                    'Home.Add.Invite a new member'.tr(),
                    style: TextStyles.font14VeryDarkGrayRegular(),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(19),
          CustomTextButton(
            onPressed: () {},
            backgroundColor: ColorsManager.blueDark,
            buttonHeight: 30,
            circularRadius: 10,
            buttonWidth: double.infinity,
            textButton: 'Home.Add.new task'.tr(),
            texStyle: TextStyles.font12WhiteMedium(),
            showIcon: true,
            pathIcon: 'assets/icons/tasks/task.svg',
            svgIconColor: ColorsManager.white,
            svgIconWidth: 14.w,
            svgIconHeight: 14.h,
            borderColor: ColorsManager.vividBlue,
          ),
        ],
      ),
    );
  }
}

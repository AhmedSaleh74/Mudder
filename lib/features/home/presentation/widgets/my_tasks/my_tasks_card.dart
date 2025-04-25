import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/widgets/custom_container.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/indicator_for_pages.dart';
import 'content_my_tasks_card.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({super.key});

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
              height: 130.h,
              child: PageView(
                controller: _pageController,
                children: [
                  ContentMyTasksCard(),
                  ContentMyTasksCard(),
                  ContentMyTasksCard(),
                ],
              ),
            ),
            verticalSpace(17),
            IndicatorForPages(pageController: _pageController, count: 3),
            verticalSpace(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: CustomTextButton(
                onPressed: () {},
                backgroundColor: Colors.transparent,
                buttonHeight: 32,
                buttonWidth: double.infinity,
                textButton: 'Home.My tasks.View all my tasks'.tr(),
                texStyle: TextStyles.font12VeryDarkGrayMedium(),
                showIcon: false,
                borderColor: ColorsManager.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

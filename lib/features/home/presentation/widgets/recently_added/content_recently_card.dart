import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';

class ContentRecentlyAddedCard extends StatelessWidget {
  const ContentRecentlyAddedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Customize Home.Recently added'.tr(),
            style: TextStyles.font14VeryDarkBlueSemiBold(),
          ),
          verticalSpace(16),
          RowWithSvgAndText(
            text: 'أنشاء خطة الانتاج',
            pathIcon: 'assets/icons/tasks/task.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
          verticalSpace(16),
          RowWithSvgAndText(
            text: 'مهمة فريق التسويق',
            pathIcon: 'assets/icons/tasks/Graphics-symbol.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
          verticalSpace(16),
          RowWithSvgAndText(
            text: 'أنشاء خطة الانتاج',
            pathIcon: 'assets/icons/tasks/task.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
          verticalSpace(16),
          RowWithSvgAndText(
            text: 'تحديث خطة مبيعات 2025',
            pathIcon: 'assets/icons/tasks/triangle.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
          verticalSpace(16),
          RowWithSvgAndText(
            text: 'أنشاء خطة الانتاج',
            pathIcon: 'assets/icons/tasks/task.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
        ],
      ),
    );
  }
}

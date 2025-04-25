import 'package:flutter/material.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/widgets/column_with_image_and_title_subtitle.dart';
import 'package:mudeer/core/widgets/custom_text_button.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class EmptyArchiveView extends StatelessWidget {
  const EmptyArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColumnWithImageAndTitleSubtitle(
            pathImage: 'assets/images/notification/archive_empty.svg',
            title: 'بعيدًا عن الأنظار، ولكن ليس بعيدًا عن البال',
            subtitle:
                'لا مزيد من إضاعة الوقت في البحث عن الإشعارات. قم بأرشفة الإشعارات التي تعود إليها كثيرًا.',
          ),
          verticalSpace(14),
          CustomTextButton(
            buttonHeight: 40,
            buttonWidth: 200,
            backgroundColor: ColorsManager.greenWithOpacity,
            textButton: 'العودة إلى النشاط',
            onPressed: () {},
            texStyle: TextStyles.font14BlueLightSemiBold(),
          ),
        ],
      ),
    );
  }
}

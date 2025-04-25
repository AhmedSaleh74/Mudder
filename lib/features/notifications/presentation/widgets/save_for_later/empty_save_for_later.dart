import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/column_with_image_and_title_subtitle.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class EmptySaveForLater extends StatelessWidget {
  const EmptySaveForLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColumnWithImageAndTitleSubtitle(
            pathImage: 'assets/images/notification/Post-its 1.svg',
            title: 'احفظ الإشعارات المهمة',
            subtitle: 'احفظ الإشعار لمشاهدته لاحقًا هنا.',
          ),
          verticalSpace(14),
          CustomTextButton(
            buttonHeight: 40,
            buttonWidth: 200,
            backgroundColor: ColorsManager.blueLight,
            textButton: 'جربها الآن',
            onPressed: () {},
            texStyle: TextStyles.font14WhiteMedium(),
          ),
        ],
      ),
    );
    ;
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/style.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class ContentMentionsCard extends StatelessWidget {
  const ContentMentionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Home.mentioned.Comments that mentioned you'.tr(),
            style: TextStyles.font14VeryDarkBlueSemiBold(),
          ),
          verticalSpace(22),
          Center(child: Image.asset('assets/images/communication.svg (1).png')),
          verticalSpace(12),
          Center(
            child: Text(
              'Home.mentioned.reply'.tr(),
              style: TextStyles.font14VeryDarkBlueRegular(),
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpace(14),
          CustomTextButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            buttonHeight: 32,
            buttonWidth: double.infinity,
            textButton: 'Home.mentioned.Go to Notifications'.tr(),
            texStyle: TextStyles.font12VeryDarkGrayMedium(),
            showIcon: false,
            borderColor: ColorsManager.lightBlue,
          ),
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mudeer/features/home/presentation/widgets/needs_your_attention/tasks_container_items.dart';
import 'package:mudeer/features/home/presentation/widgets/needs_your_attention/top_of_needs_your_attention_card.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class ContentNeedsYourAttentionCard extends StatelessWidget {
  final VoidCallback onTap;
  const ContentNeedsYourAttentionCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          TopOfNeedsYourAttentionCard(onTap: onTap),
          verticalSpace(14),
          TasksContainerItems(),
          verticalSpace(12),
          CustomTextButton(
            onPressed: () {},
            backgroundColor: ColorsManager.vividBlue,
            buttonHeight: 30,
            buttonWidth: double.infinity,
            textButton: 'Home.Tasks.View the mission'.tr(),
            texStyle: TextStyles.font12WhiteMedium(),
            showIcon: true,
            borderColor: ColorsManager.vividBlue,
          ),
        ],
      ),
    );
  }
}

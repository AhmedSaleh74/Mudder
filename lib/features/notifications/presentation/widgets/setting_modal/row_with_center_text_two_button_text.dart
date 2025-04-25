import 'package:flutter/material.dart';
import 'package:mudeer/core/widgets/custom_txt_button.dart';

import '../../../../../core/theming/style.dart';

class RowWithCenterTextTwoButtonText extends StatelessWidget {
  const RowWithCenterTextTwoButtonText({
    super.key,
    required this.trailingTextButton,
    required this.centerText,
    required this.leadingTextButton,
  });
  final String trailingTextButton;
  final String centerText;
  final String leadingTextButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTxtButton(onPress: () {}, buttonText: trailingTextButton),
        Expanded(
          flex: 7,
          child: Center(
            child: Text(centerText, style: TextStyles.font16darkBlueRegular()),
          ),
        ),
        CustomTxtButton(onPress: () {}, buttonText: leadingTextButton),
      ],
    );
  }
}

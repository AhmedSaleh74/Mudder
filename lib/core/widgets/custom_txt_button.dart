import 'package:flutter/material.dart';

import '../theming/style.dart';

class CustomTxtButton extends StatelessWidget {
  const CustomTxtButton({
    super.key,
    required this.onPress,
    required this.buttonText,
  });
  final Function() onPress;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(buttonText, style: TextStyles.font16BlueRegular()),
    );
  }
}

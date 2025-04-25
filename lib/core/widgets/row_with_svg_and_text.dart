import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../helpers/spacing.dart';

class RowWithSvgAndText extends StatelessWidget {
  final String pathIcon;
  final String text;
  final TextStyle textStyle;
  final CrossAxisAlignment crossAxisAlignment;

  const RowWithSvgAndText({
    super.key,
    required this.pathIcon,
    required this.text,
    required this.textStyle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SvgPicture.asset(pathIcon),
        horizontalSpace(8),
        Text(text, style: textStyle),
      ],
    );
  }
}

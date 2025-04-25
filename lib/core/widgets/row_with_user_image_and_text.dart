import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../helpers/spacing.dart';
import 'circle_image_user.dart';

class RowWithUserImageAndText extends StatelessWidget {
  final String text;
  final String pathImage;
  final TextStyle textStyles;
  final CrossAxisAlignment crossAxisAlignment;

  const RowWithUserImageAndText({
    super.key,
    required this.text,
    required this.pathImage,
    required this.textStyles,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        CircleImageUser(pathImage: pathImage),
        horizontalSpace(8),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Text(text.tr(), style: textStyles),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mudeer/core/helpers/spacing.dart';

import '../theming/style.dart';
import 'custom_asset_image.dart';

class ColumnWithImageAndTitleSubtitle extends StatelessWidget {
  const ColumnWithImageAndTitleSubtitle({
    super.key,
    required this.pathImage,
    required this.title,
    required this.subtitle,
  });
  final String pathImage;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomAssetImage(pathImage: pathImage),
        verticalSpace(16),
        Text(title, style: TextStyles.font16darkBlueRegular(), maxLines: 1),
        verticalSpace(16),
        Text(
          subtitle,
          style: TextStyles.font14VeryDarkGrayRegular(),
          maxLines: 2,
        ),
      ],
    );
  }
}

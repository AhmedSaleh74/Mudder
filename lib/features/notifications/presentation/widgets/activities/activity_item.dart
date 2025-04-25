import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';
import '../../../../../core/widgets/circle_image_user.dart';

Widget activityItem({
  required String pathIcon,
  required String title,
  String? hintTitle,
  required String user,
  required String subtitle,
  required String time,
  required String avatar,
  String? message,
  String? trailingIconPath,
  String? secondaryTrailingIconPath,
}) {
  return Column(
    children: [
      Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RowWithSvgAndText(
                      pathIcon: pathIcon,
                      text: title,
                      textStyle: TextStyles.font18VeryDarkBlueSemiBold(),
                    ),
                  ),
                  if (hintTitle != null)
                    Text(
                      hintTitle,
                      style: TextStyles.font14LimeGreenSemiBold(),
                    ),
                  if (trailingIconPath != null)
                    SvgPicture.asset(trailingIconPath),
                  if (secondaryTrailingIconPath != null)
                    SvgPicture.asset(secondaryTrailingIconPath),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CircleImageUser(
                      pathImage: avatar,
                      width: 34,
                      height: 34,
                    ),
                  ),
                  horizontalSpace(12),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Text(
                              user,
                              style: TextStyles.font18VeryDarkBlueSemiBold(),
                              maxLines: 1,
                            ),
                            Flexible(
                              child: Text(
                                subtitle,
                                style:
                                    TextStyles.font14VeryDarkBlueBlueMedium(),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        if (message != null) verticalSpace(2),
                        if (message != null)
                          Text(
                            message,
                            style: TextStyles.font14VeryDarkGrayRegular(),
                          ),
                        verticalSpace(4),
                        Text(
                          time,
                          style: TextStyles.font14VeryDarkGrayRegular(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      verticalSpace(8),
    ],
  );
}

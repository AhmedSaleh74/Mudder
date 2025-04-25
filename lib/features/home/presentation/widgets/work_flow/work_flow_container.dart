import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/colors.dart';
import 'package:mudeer/core/theming/style.dart';

class WorkFlowContainer extends StatelessWidget {
  final String pathIcon;
  final String title;
  final String info;
  final String infoNumber;

  const WorkFlowContainer({
    super.key,
    required this.pathIcon,
    required this.title,
    required this.info,
    required this.infoNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      width: 102.w,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        border: Border.all(color: ColorsManager.lightBlue, width: 0.60),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(pathIcon),
          verticalSpace(12),
          Text(
            title.tr(),
            style: TextStyles.font12VeryDarkBlueMedium(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(4),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: infoNumber,
              style: TextStyles.font12darkGrayishRegular(),
              children: <TextSpan>[
                TextSpan(text: ' '),
                TextSpan(
                  text: info.tr(),
                  style: TextStyles.font12darkGrayishRegular(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';

class TopOfProjectsCard extends StatelessWidget {
  final VoidCallback onTap;
  const TopOfProjectsCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Home.work flow.Projects'.tr(),
          style: TextStyles.font14VeryDarkBlueSemiBold(),
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              left: isArabic ? 10 : 0,
              right: isArabic ? 0 : 10,
            ),
            child: Row(
              children: [
                Text(
                  'Home.Projects.Latest projects'.tr(),
                  style: TextStyles.font12VeryDarkGrayMedium(),
                ),
                horizontalSpace(4),
                SvgPicture.asset('assets/icons/dropDown.svg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

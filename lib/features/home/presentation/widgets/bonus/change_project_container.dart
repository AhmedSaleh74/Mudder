import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/custom_container.dart';

class ChangeProjectContainer extends StatelessWidget {
  const ChangeProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 13,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(6),
      child: CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 9.67, horizontal: 14),
        width: 145,
        borderRadius: BorderRadius.circular(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home.Projects.Latest'.tr(),
              style: TextStyles.font12darkGrayRegular(),
            ),
            SvgPicture.asset('assets/icons/projects/progict.svg'),
          ],
        ),
      ),
    );
  }
}

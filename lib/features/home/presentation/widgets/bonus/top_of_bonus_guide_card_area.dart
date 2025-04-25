import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/icon_container_with_text.dart';

class TopOfBonusCardArea extends StatelessWidget {
  final VoidCallback onTap;
  const TopOfBonusCardArea({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithContainer(
          pathIcon: 'assets/icons/projects/Vector (6).svg',
          width: 32,
          height: 30,
          backgroundColor: ColorsManager.limeGreen,
          borderRadiusCircular: 5.52,
          horizontalSpace: 8,
          padding: EdgeInsets.all(5),
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اطلاق بونص ودليل',
                style: TextStyles.font14VeryDarkBlueBlueMedium(),
              ),
              horizontalSpace(2),
              Text('07 نوفمبر 2024', style: TextStyles.font10VeryDarkRegular()),
            ],
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            'assets/icons/main_layout/ellipsis.svg',
            color: ColorsManager.veryDarkGray,
          ),
        ),
      ],
    );
  }
}

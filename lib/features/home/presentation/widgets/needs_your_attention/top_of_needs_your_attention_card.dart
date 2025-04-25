import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';

class TopOfNeedsYourAttentionCard extends StatelessWidget {
  final VoidCallback onTap;
  const TopOfNeedsYourAttentionCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'مهمة متأخرة منذ 7 أيام',
          style: TextStyles.font14VeryDarkBlueSemiBold(),
        ),
        horizontalSpace(8),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            'assets/icons/tasks/close.svg',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../helpers/spacing.dart';
import '../theming/style.dart';

class RowWithTextIconDropDown extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const RowWithTextIconDropDown({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Text(text.tr(), style: TextStyles.font12VeryDarkGrayMedium()),
            horizontalSpace(5),
            SvgPicture.asset('assets/icons/dropDown.svg'),
          ],
        ),
      ),
    );
  }
}

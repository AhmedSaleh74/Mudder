import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudeer/core/theming/colors.dart';

Widget buildIcon({required String path, required bool isSelected}) {
  return SvgPicture.asset(
    path,
    colorFilter: ColorFilter.mode(
      isSelected ? ColorsManager.blueLight : Colors.grey,
      BlendMode.srcIn,
    ),
    width: 14,
    height: 14,
  );
}

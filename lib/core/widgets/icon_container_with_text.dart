import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWithContainer extends StatelessWidget {
  final String pathIcon;
  final Widget widget;
  final double width;
  final double height;
  final double horizontalSpace;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final double borderRadiusCircular;
  final Color? svgIconColor;
  final double? svgIconWidth;
  final double? svgIconHeight;

  const IconWithContainer({
    super.key,
    required this.pathIcon,
    required this.widget,
    this.width = 30.0,
    this.height = 27.0,
    this.padding = const EdgeInsets.all(0),
    required this.backgroundColor,
    this.borderRadiusCircular = 4.87,
    this.svgIconColor,
    required this.horizontalSpace,
    this.svgIconWidth,
    this.svgIconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width.w,
          height: height.h,
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadiusCircular),
            color: backgroundColor,
          ),
          child: Center(
            child: SvgPicture.asset(
              pathIcon,
              color: svgIconColor,
              height: svgIconHeight,
              width: svgIconWidth,
            ),
          ),
        ),
        SizedBox(width: horizontalSpace.w),
        widget,
      ],
    );
  }
}

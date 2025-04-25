import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/theming/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color borderColor;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final double borderWidth;
  final double width;
  final double? height;
  final double? margin;
  const CustomContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    this.borderColor = ColorsManager.lightBlue,
    this.backgroundColor = ColorsManager.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(14)),
    this.borderWidth = 0.60,
    this.width = double.infinity,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width.w,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: borderColor, width: borderWidth),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

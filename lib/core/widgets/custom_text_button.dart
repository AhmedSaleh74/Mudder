import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import '../theming/colors.dart';

class CustomTextButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String textButton;
  final Color? borderColor;
  final VoidCallback onPressed;
  final double? circularRadius;
  final TextStyle texStyle;
  final bool? showIcon;
  final String? pathIcon;
  final Color? svgIconColor;
  final double? svgIconWidth;
  final double? svgIconHeight;

  const CustomTextButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.backgroundColor,
    this.horizontalPadding,
    this.borderColor,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.texStyle,
    this.circularRadius,
    this.showIcon = false,
    this.pathIcon,
    this.svgIconColor,
    this.svgIconWidth,
    this.svgIconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 0,
          vertical: verticalPadding ?? 0,
        ),
        height: buttonHeight?.h,
        width: buttonWidth!.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularRadius ?? 12),
          color: backgroundColor,
          border: Border.all(
            color: borderColor ?? ColorsManager.lightBlue,
            width: 0.80,
          ),
        ),
        child:
            showIcon == true
                ? Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        pathIcon ?? 'assets/icons/show.svg',
                        color: svgIconColor,
                        height: svgIconHeight,
                        width: svgIconWidth,
                      ),
                      horizontalSpace(8),
                      Text(
                        textButton,
                        style: texStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
                : Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      textButton,
                      style: texStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
      ),
    );
  }
}

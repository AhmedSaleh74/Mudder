import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({
    super.key,
    required this.pathImage,
    this.height,
    this.width,
  });
  final String pathImage;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      pathImage,
      height: height ?? 120,
      width: width ?? 120,
    );
  }
}

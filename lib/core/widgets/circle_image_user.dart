import 'package:flutter/material.dart';

class CircleImageUser extends StatelessWidget {
  final String pathImage;
  final double? height;
  final double? width;
  const CircleImageUser({
    super.key,
    required this.pathImage,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: Image.asset(
        pathImage,
        height: height ?? 20,
        width: width ?? 20,
        fit: BoxFit.cover,
      ),
    );
  }
}

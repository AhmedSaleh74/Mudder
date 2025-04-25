import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';

class ModalSectionContainer extends StatelessWidget {
  const ModalSectionContainer({super.key, required this.childWidget});
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade300, width: 1),
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: childWidget,
    );
  }
}

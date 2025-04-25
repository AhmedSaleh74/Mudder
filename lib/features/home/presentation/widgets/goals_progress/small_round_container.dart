import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';

class SmallRoundContainer extends StatelessWidget {
  const SmallRoundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 3,
      decoration: BoxDecoration(
        color: ColorsManager.darkGrayish,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/style.dart';

class CustomizationSwitchRow extends StatelessWidget {
  final String label;
  final bool isActive;
  final Function(bool) onSwitchChanged;

  const CustomizationSwitchRow({
    super.key,
    required this.label,
    required this.isActive,
    required this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/home_top_bar/Vector.svg'),
              horizontalSpace(8),
              Text(label.tr(), style: TextStyles.font16darkBlueRegular()),
            ],
          ),
          GestureDetector(
            onTap: () => onSwitchChanged(isActive),
            child: Transform.scale(
              scale: 0.7,
              child: Switch(
                value: isActive,
                onChanged: (value) => onSwitchChanged(value),
                activeColor: Colors.black,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/style.dart';

class TopOfCustomizeHomeContainer extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onSave;

  const TopOfCustomizeHomeContainer({
    super.key,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onCancel,
            child: Text(
              'Customize Home.cancellation'.tr(),
              style: TextStyles.font14VividBlueMedium(),
            ),
          ),
          Text(
            'Customize Home.Customize Home'.tr(),
            style: TextStyles.font16VeryDarkBlueMedium(),
          ),
          GestureDetector(
            onTap: onSave,
            child: Text(
              'Customize Home.save'.tr(),
              style: TextStyles.font14VividBlueMedium(),
            ),
          ),
        ],
      ),
    );
  }
}

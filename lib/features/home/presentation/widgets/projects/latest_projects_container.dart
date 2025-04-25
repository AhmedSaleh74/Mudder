import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/custom_container.dart';

class LatestProjectsContainer extends StatelessWidget {
  const LatestProjectsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 13,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(6),
      child: CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 8),
        width: 145,
        borderRadius: BorderRadius.circular(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Home.My tasks.end soon'.tr(),
                style: TextStyles.font12darkGrayRegular(),
              ),
            ),
            Divider(color: Colors.grey.withOpacity(0.2)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Home.My tasks.late'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

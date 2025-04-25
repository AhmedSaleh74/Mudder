import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import 'modal_setting_content.dart';

void showDisplaySettingsModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      ScrollController controller = ScrollController();
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.59,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (_, controller) {
          return Container(
            decoration: BoxDecoration(
              color: ColorsManager.gray,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: ModalSettingContent(scrollController: controller),
          );
        },
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:mudeer/features/notifications/data/swap_list.dart';
import 'package:mudeer/features/notifications/presentation/widgets/setting_modal/swap_modal_content.dart';
import '../../../../../core/theming/colors.dart';

void swapModal({required BuildContext context, bool swapRight = true}) {
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
        initialChildSize: 0.9,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (_, controller) {
          return Container(
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: SwapModalContent(
              scrollController: controller,
              swapLists: SwapLists(),
              swapRight: true,
            ),
          );
        },
      );
    },
  );
}

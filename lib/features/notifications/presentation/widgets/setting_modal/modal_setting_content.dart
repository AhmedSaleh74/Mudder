import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';
import 'gesture_swipe_trigger.dart';
import 'modal_list_tile.dart';
import 'notification_display_toggel.dart';

class ModalSettingContent extends StatelessWidget {
  const ModalSettingContent({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Center(child: SvgPicture.asset('assets/icons/notification/minus.svg')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text('إعدادات العرض', style: TextStyles.font14TextGrayBold()),
        ),
        NotificationDisplayToggle(),
        verticalSpace(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text('الإيماءات', style: TextStyles.font14TextGrayBold()),
        ),
        GestureSwipeTrigger(
          context: context,
          leadingText: 'مرر يمين',
          leadingIconPath: 'assets/icons/notification/arrow-right-left.svg',
          trailingIconPath: 'assets/icons/notification/arrow.svg',
          trailingText: 'الأرشيف',
          swapRight: true,
        ),
        GestureSwipeTrigger(
          context: context,
          leadingText: 'مرر يسار',
          leadingIconPath: 'assets/icons/notification/arrow-left-right.svg',
          trailingIconPath: 'assets/icons/notification/arrow.svg',
          trailingText: 'حفظ لاحقا',
          swapRight: false,
        ),
        verticalSpace(16),
        ModalListTile(
          text: 'إدارة الإشعارات',
          pathIcon: 'assets/icons/notification/Notification.svg',
        ),
        verticalSpace(16),
        ModalListTile(
          text: 'أرشفة الكل',
          pathIcon: 'assets/icons/notification/Archive.svg',
        ),
      ],
    );
  }
}

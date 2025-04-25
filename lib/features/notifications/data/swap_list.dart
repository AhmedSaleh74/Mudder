import '../models/swap_model.dart';

class SwapLists {
  final List<SwapModel> rightLeftSwap = [
    SwapModel(
      text: 'تحديد كغير مقروء',
      pathIcon: 'assets/icons/notification/unreadable.svg',
    ),
    SwapModel(
      text: 'حفظ لاحقًا',
      pathIcon: 'assets/icons/notification/save_later.svg',
    ),
    SwapModel(
      text: 'أرشفة هذا الإشعار',
      pathIcon: 'assets/icons/notification/arch_notification.svg',
    ),
    SwapModel(
      text: 'أنشئ مهمة كمتابعة',
      pathIcon: 'assets/icons/notification/add_task.svg',
    ),
    SwapModel(
      text: 'إلغاء متابعة هذه المهمة',
      pathIcon: 'assets/icons/notification/user-round-x.svg',
    ),
  ];
}

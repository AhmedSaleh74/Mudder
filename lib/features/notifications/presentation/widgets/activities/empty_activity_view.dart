import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/column_with_image_and_title_subtitle.dart';
import '../../../../../core/widgets/custom_asset_image.dart';

class EmptyActivityView extends StatelessWidget {
  const EmptyActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnWithImageAndTitleSubtitle(
      pathImage: 'assets/images/notification/SearchEmptyState 1.svg',
      title: 'أنت على اطلاع دائم بأعمال فريقك',
      subtitle: 'راجع لاحقًا للحصول على تحديثات حول العمل الذي تتعاون فيه.',
    );
  }
}

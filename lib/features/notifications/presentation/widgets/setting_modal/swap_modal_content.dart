import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudeer/core/widgets/Row_With_Svg_And_Text.dart';
import 'package:mudeer/features/notifications/presentation/widgets/setting_modal/row_with_center_text_two_button_text.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../data/swap_list.dart';
import 'modal_section_container.dart';

class SwapModalContent extends StatelessWidget {
  const SwapModalContent({
    super.key,
    required this.scrollController,
    required this.swapLists,
    required this.swapRight,
  });
  final bool swapRight;
  final ScrollController scrollController;
  final SwapLists swapLists;
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        SvgPicture.asset('assets/icons/notification/minus.svg'),
        if (swapRight)
          RowWithCenterTextTwoButtonText(
            trailingTextButton: 'إلغاء',
            centerText: 'إجراء السحب لليمين',
            leadingTextButton: 'حفظ',
          ),
        if (!swapRight)
          RowWithCenterTextTwoButtonText(
            trailingTextButton: 'إلغاء',
            centerText: 'إجراء السحب لليسار',
            leadingTextButton: 'حفظ',
          ),
        Divider(color: ColorsManager.grayBorder, thickness: 3),
        for (int i = 0; i < 5; i++)
          ModalSectionContainer(
            childWidget: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RowWithSvgAndText(
                pathIcon: swapLists.rightLeftSwap[i].pathIcon,
                text: swapLists.rightLeftSwap[i].text,
                textStyle: TextStyles.font16darkBlueRegular(),
              ),
            ),
          ),
      ],
    );
  }
}

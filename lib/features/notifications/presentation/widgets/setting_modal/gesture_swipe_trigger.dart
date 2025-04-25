import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudeer/features/notifications/presentation/widgets/setting_modal/swap_modal.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_txt_button.dart';
import 'display_setting_modal.dart';

class GestureSwipeTrigger extends StatefulWidget {
  final BuildContext context;
  final String leadingText;
  final String trailingText;
  final String leadingIconPath;
  final String trailingIconPath;
  final bool swapRight;

  const GestureSwipeTrigger({
    super.key,
    required this.context,
    required this.leadingText,
    required this.trailingText,
    required this.leadingIconPath,
    required this.trailingIconPath,
    required this.swapRight,
  });

  @override
  State<GestureSwipeTrigger> createState() => _GestureSwipeTriggerState();
}

class _GestureSwipeTriggerState extends State<GestureSwipeTrigger> {
  double _dragAmount = 0;

  void _handleSwipeAction() {
    if (_dragAmount > 60 && widget.swapRight) {
      print('سحب لليمين');
      swapModal(context: context, swapRight: widget.swapRight);
    } else if (_dragAmount < -60 && !widget.swapRight) {
      print('سحب لليسار');
      swapModal(context: context, swapRight: widget.swapRight);
    }
    setState(() => _dragAmount = 0); // Reset position
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      decoration: BoxDecoration(
        color:
            _dragAmount.abs() > 10
                ? Colors.blue.withOpacity(0.05)
                : ColorsManager.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade300, width: 1),
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          setState(() {
            _dragAmount += details.delta.dx;
          });
        },
        onHorizontalDragEnd: (details) {
          _handleSwipeAction();
        },
        child: Transform.translate(
          offset: Offset(_dragAmount.clamp(-80, 80), 0),
          child: ListTile(
            title: RowWithSvgAndText(
              pathIcon: widget.leadingIconPath,
              text: widget.leadingText,
              textStyle: TextStyles.font16darkBlueRegular(),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTxtButton(
                  onPress: () {
                    if (widget.swapRight) {
                      print('سحب لليمين');
                      swapModal(context: context, swapRight: widget.swapRight);
                    }
                    if (!widget.swapRight) {
                      swapModal(context: context, swapRight: widget.swapRight);
                      print('سحب للشمال');
                    }
                  },
                  buttonText: widget.trailingText,
                ),
                horizontalSpace(6),
                SvgPicture.asset(widget.trailingIconPath),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

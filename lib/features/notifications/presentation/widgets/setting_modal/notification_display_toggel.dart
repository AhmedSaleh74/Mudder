import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';
import 'modal_section_container.dart';

class NotificationDisplayToggle extends StatefulWidget {
  const NotificationDisplayToggle({super.key});

  @override
  State<NotificationDisplayToggle> createState() =>
      _NotificationDisplayToggleState();
}

class _NotificationDisplayToggleState extends State<NotificationDisplayToggle> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return ModalSectionContainer(
      childWidget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RowWithSvgAndText(
              pathIcon: 'assets/icons/notification/maximize-2.svg',
              text: 'توسيع عرض الإشعارات',
              textStyle: TextStyles.font16darkBlueRegular(),
            ),
            Transform.scale(
              scale: .7,
              child: Switch(
                value: isOn,
                onChanged: (val) {
                  isOn = !isOn;
                  setState(() {});
                },
                activeColor: ColorsManager.switchGreen,
                thumbColor: WidgetStateProperty.all(ColorsManager.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

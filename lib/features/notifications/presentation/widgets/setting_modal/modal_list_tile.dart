import 'package:flutter/material.dart';

import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';
import 'modal_section_container.dart';

class ModalListTile extends StatelessWidget {
  const ModalListTile({super.key, required this.text, required this.pathIcon});
  final String text;
  final String pathIcon;
  @override
  Widget build(BuildContext context) {
    return ModalSectionContainer(
      childWidget: ListTile(
        title: RowWithSvgAndText(
          pathIcon: pathIcon,
          text: text,
          textStyle: TextStyles.font16darkBlueRegular(),
        ),
        onTap: () {},
      ),
    );
  }
}

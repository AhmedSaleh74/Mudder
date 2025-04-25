import 'package:flutter/material.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_with_user_image_and_text.dart';
import '../../../../../core/widgets/row_with_text_icon_drop_down.dart';

class TopOfMyTasksCard extends StatelessWidget {
  final VoidCallback onTap;
  const TopOfMyTasksCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowWithUserImageAndText(
          pathImage: 'assets/images/Profile.png',
          text: 'Home.My tasks.My tasks',
          textStyles: TextStyles.font14VeryDarkBlueSemiBold(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: RowWithTextIconDropDown(
            text: 'Home.My tasks.late',
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';
import '../../../../../core/widgets/Row_with_user_image_and_text.dart';

class TasksContainerItems extends StatelessWidget {
  const TasksContainerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 10),
      height: 84,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorsManager.veryLightGray,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowWithSvgAndText(
            text: 'تحديد أهداف المنتج',
            pathIcon: 'assets/icons/tasks/task.svg',
            textStyle: TextStyles.font14VeryDarkBlueRegular(),
          ),
          verticalSpace(10),
          RowWithUserImageAndText(
            pathImage: 'assets/images/user.png',
            text: '04 نوفمبر',
            textStyles: TextStyles.font12PureOrangeRegular(),
          ),
        ],
      ),
    );
  }
}

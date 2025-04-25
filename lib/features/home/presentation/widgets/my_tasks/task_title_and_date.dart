import 'package:flutter/material.dart';
import 'package:mudeer/core/theming/style.dart';
import '../../../../../core/widgets/Row_With_Svg_And_Text.dart';

class TaskTitleAndDate extends StatelessWidget {
  final String date;
  final String taskTitle;

  const TaskTitleAndDate({
    super.key,
    required this.date,
    required this.taskTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowWithSvgAndText(
          text: taskTitle,
          pathIcon: 'assets/icons/tasks/task.svg',
          textStyle: TextStyles.font14VeryDarkBlueRegular(),
        ),
        Text(date, style: TextStyles.font14VeryDarkGrayRegular()),
      ],
    );
  }
}

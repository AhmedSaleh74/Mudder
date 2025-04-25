import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/features/home/presentation/widgets/my_tasks/task_title_and_date.dart';
import 'package:mudeer/features/home/presentation/widgets/my_tasks/top_of_my_tasks_card.dart';
import 'late_tasks_container.dart';

class ContentMyTasksCard extends StatefulWidget {
  const ContentMyTasksCard({super.key});

  @override
  State<ContentMyTasksCard> createState() => _ContentMyTasksCardState();
}

class _ContentMyTasksCardState extends State<ContentMyTasksCard> {
  bool _isContainerVisible = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopOfMyTasksCard(onTap: _toggleContainerVisibility),
              verticalSpace(21.5),
              TaskTitleAndDate(
                date: '04 نوفمبر 2024',
                taskTitle: 'تصميم مكتبة الايقونات',
              ),
              verticalSpace(17),
              TaskTitleAndDate(
                date: '05 نوفمبر 2024',
                taskTitle: 'أنشاء الهوية البصرية',
              ),
              verticalSpace(17),
              TaskTitleAndDate(
                date: '07 نوفمبر 2024',
                taskTitle: 'خطة التسويق',
              ),
            ],
          ),
          if (_isContainerVisible)
            Positioned(
              top: 26.h,
              right: isArabic ? null : 13,
              left: isArabic ? 0 : null,
              child: LateTasksContainer(),
            ),
        ],
      ),
    );
  }
}

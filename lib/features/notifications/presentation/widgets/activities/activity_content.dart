import 'package:flutter/material.dart';
import '../../../../../core/theming/style.dart';
import '../../../data/activity_item_list.dart';
import 'activity_item.dart';

class ActivityContent extends StatelessWidget {
  const ActivityContent({super.key, required this.activityItemList});
  final ActivityItemList activityItemList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Text("اليوم", style: TextStyles.font14TextGrayBold()),
        ),
        for (int i = 0; i < activityItemList.activities.length; i++)
          activityItem(
            pathIcon: activityItemList.activities[i].pathIcon,
            title: activityItemList.activities[i].title,
            user: activityItemList.activities[i].user,
            message: activityItemList.activities[i].message,
            subtitle: activityItemList.activities[i].subtitle,
            time: activityItemList.activities[i].time,
            avatar: activityItemList.activities[i].avatar,
            hintTitle: activityItemList.activities[i].hintTitle,
            trailingIconPath: activityItemList.activities[i].trailingIconPath,
            secondaryTrailingIconPath:
                activityItemList.activities[i].secondaryTrailingIconPath,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Text('بالأمس', style: TextStyles.font14TextGrayBold()),
        ),
        for (int i = 0; i < activityItemList.activities.length; i++)
          activityItem(
            pathIcon: activityItemList.activities[i].pathIcon,
            title: activityItemList.activities[i].title,
            user: activityItemList.activities[i].user,
            subtitle: activityItemList.activities[i].subtitle,
            message: activityItemList.activities[i].message,
            time: activityItemList.activities[i].time,
            avatar: activityItemList.activities[i].avatar,
            trailingIconPath: activityItemList.activities[i].trailingIconPath,
            secondaryTrailingIconPath:
                activityItemList.activities[i].secondaryTrailingIconPath,
          ),
      ],
    );
  }
}

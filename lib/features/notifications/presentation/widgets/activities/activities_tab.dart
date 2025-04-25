import 'package:flutter/material.dart';
import 'package:mudeer/features/notifications/presentation/widgets/activities/empty_activity_view.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/style.dart';
import '../../../data/activity_item_list.dart';
import 'activity_content.dart';
import 'activity_item.dart';

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab({super.key, required this.isEmpty});
  final bool isEmpty;
  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return EmptyActivityView();
    }
    return ActivityContent(activityItemList: ActivityItemList());
  }
}

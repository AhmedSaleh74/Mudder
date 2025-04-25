import 'package:flutter/material.dart';
import 'package:mudeer/features/home/presentation/widgets/work_flow/work_flow_container.dart';

class ContentWorkFlowCards extends StatelessWidget {
  const ContentWorkFlowCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WorkFlowContainer(
          pathIcon: 'assets/icons/workflow/notifications.svg',
          title: 'Home.work flow.Notifications',
          info: 'Home.work flow.Notification',
          infoNumber: '10',
        ),
        WorkFlowContainer(
          pathIcon: 'assets/icons/workflow/projects.svg',
          title: 'Home.work flow.Projects',
          info: 'Home.work flow.Projects',
          infoNumber: '10',
        ),
        WorkFlowContainer(
          pathIcon: 'assets/icons/workflow/goals.svg',
          title: 'Home.work flow.Goals',
          info: 'Home.work flow.Goals',
          infoNumber: '5',
        ),
      ],
    );
  }
}

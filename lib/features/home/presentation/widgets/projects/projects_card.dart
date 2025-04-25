import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_container.dart';
import 'content_projects_card.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomContainer(child: ContentProjectsCard()),
        ),
      ],
    );
  }
}

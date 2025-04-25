import 'package:flutter/material.dart';
import 'package:mudeer/core/widgets/custom_container.dart';
import 'content_mentions_card.dart';

class MentionsCard extends StatelessWidget {
  const MentionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ContentMentionsCard(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mudeer/core/widgets/custom_container.dart';
import 'content_bonus_guide_card.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(children: [ContentBonusGuideCard()]),
      ),
    );
  }
}

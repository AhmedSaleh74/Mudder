import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/features/home/presentation/widgets/bonus/top_of_bonus_guide_card_area.dart';
import 'bonus_guide_container.dart';
import 'change_project_container.dart';

class ContentBonusGuideCard extends StatefulWidget {
  const ContentBonusGuideCard({super.key});

  @override
  State<ContentBonusGuideCard> createState() => _ContentBonusGuideCardState();
}

class _ContentBonusGuideCardState extends State<ContentBonusGuideCard> {
  bool _isContainerVisible = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return Stack(
      children: [
        Column(
          children: [
            TopOfBonusCardArea(onTap: _toggleContainerVisibility),
            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BonusContainer(title: 'Home.Bonus.Complete', number: '10'),
                BonusContainer(title: 'Home.Bonus.late', number: '24'),
                BonusContainer(title: 'Home.Bonus.due', number: '3'),
              ],
            ),
          ],
        ),
        if (_isContainerVisible)
          Positioned(
            top: 26.h,
            right: isArabic ? 0 : 0,
            left: isArabic ? 0 : null,
            child: ChangeProjectContainer(),
          ),
      ],
    );
  }
}
